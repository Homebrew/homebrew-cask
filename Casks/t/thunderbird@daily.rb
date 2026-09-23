cask "thunderbird@daily" do
  version "158.0a1,2026-09-23-10-38-49"

  language "cs" do
    sha256 "80db3b27757f6683dc5ed839abe5c9359ff3c7149fc4838f59814dfef1ce668f"
    "cs"
  end
  language "de" do
    sha256 "f73444c3abc5a07bd2a130c73423b7a434697a997a872e61028c075019e60586"
    "de"
  end
  language "en-GB" do
    sha256 "65002e8e99568744cb47e1a5ed0e9ca7a586cb4151144859455d20f6039394fe"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4b2057d8a17ce209468c4b2392641ecdf16e29b4e372fd8f2e3f7dff1f406ab1"
    "en-US"
  end
  language "fr" do
    sha256 "f937f996c0ca9781fb2629ef533f232edcd9fa771db2e2e6c2d3d0320f5b3594"
    "fr"
  end
  language "gl" do
    sha256 "bf27f5b5b5dd23988e84b3edd23ea6345e8128bfcc7d0ad9938ee7765d6e9ebd"
    "gl"
  end
  language "it" do
    sha256 "31d33dbb1c563d3023a86be2a8b39cae28fcee3c1f904d771f0226972a67084d"
    "it"
  end
  language "ja" do
    sha256 "ff32b66ddff924b99f7eaad6be24bb5453bd4a972d14c8e52b42929391427d27"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0564a296652ef13e19f01c9413471f07de63f33646d39758c390d416c9b9bf3f"
    "nl"
  end
  language "pl" do
    sha256 "762477ec8fa9676d1c31d58e2fe2e2a6a739e2fac0f2f45232d55fd922c89892"
    "pl"
  end
  language "pt" do
    sha256 "c10cea046183a104e5f703f1975e34fda2899201e484a4b3cb6541645564cf2f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c6252ec67f0a47f5849956858770620facfe05e79bd48b7a7ee17615bff2bc41"
    "pt-BR"
  end
  language "ru" do
    sha256 "432e187df9a0bfda3e75be9ed040a42a84c328310f5b5827d26cb999934c3bd8"
    "ru"
  end
  language "uk" do
    sha256 "d7816f17a81d599b74e7df9e2ac9a899a2c375fb7537ea2c1d573d963e273a7d"
    "uk"
  end
  language "zh-TW" do
    sha256 "dfb31d48902488b246580b44236d9168090d6c0e73dc15d9d5782dfcfa837112"
    "zh-TW"
  end
  language "zh" do
    sha256 "856c3942385f3683b9b19d0e2b29ce4f150485db614cb05aafc32be6293c443a"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Thunderbird Daily.app"

  uninstall quit: "org.mozilla.thunderbird-daily"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
