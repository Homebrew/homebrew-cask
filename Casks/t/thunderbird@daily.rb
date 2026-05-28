cask "thunderbird@daily" do
  version "153.0a1,2026-05-28-09-19-17"

  language "cs" do
    sha256 "d28ef3ffb33c899cf290ab37ad6310b464fb1879a2c8b3077e6cc02d100ee758"
    "cs"
  end
  language "de" do
    sha256 "5f7a8cdd6229042e965dfcb1e14f1a3ade92cba58795c0738b906d1c9d547829"
    "de"
  end
  language "en-GB" do
    sha256 "e5f68f6d0b54d738b4b156d7f3eb8146da94d4683d595996eea8c1c5cab9985e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cb3ba10da42fb6ada050d02e36302e5fd384eb1286136bf063996e37030ce6ed"
    "en-US"
  end
  language "fr" do
    sha256 "6670f1403a1c61d51fbc1e228cdd277cac1d98de0d21583e002128f8313eda01"
    "fr"
  end
  language "gl" do
    sha256 "cdb267cb9343ba7dc1e270adc07776ef8be3ea438bed1fecbaa7d1aaa816635a"
    "gl"
  end
  language "it" do
    sha256 "0c8fd97f1c20a7b6a47771f8c303abb8173f10c2a18ed344b64c95e400b4c397"
    "it"
  end
  language "ja" do
    sha256 "374bfed8bb92badb76dcc4ce76edd7cb0775f5659f0dfc62f1611a6242fcb4f3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ea95de572511eae782f8ab187e54715099c76f3a0c03223dfdf1e1f20ea9163b"
    "nl"
  end
  language "pl" do
    sha256 "a3edda8cf9e8b578d0ea0e58fdf5bb07e7d2eec24186cca95717ab00ba88c8f1"
    "pl"
  end
  language "pt" do
    sha256 "80e6ce4cc0b4675056246ed45b902b3b1d065a5b0ce226deec65f19e03e9ed0b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "dbedc781c973032513e19877d69abc2db52d0113fe8bf7a49e37d07bca3b3dd9"
    "pt-BR"
  end
  language "ru" do
    sha256 "01ecbf14b15ffc7f54ea9de08df6b2dbf293d1e9ec62dd3e4de5f064d981437f"
    "ru"
  end
  language "uk" do
    sha256 "a19e4b6cc9ab441f53ccf5473100012a679a694f0881a59ded9e95f7a5b29338"
    "uk"
  end
  language "zh-TW" do
    sha256 "0e4b1f4fc1cac3026be042f06f17dc19ab8f20cc661e2e03b30616c650ca1bf7"
    "zh-TW"
  end
  language "zh" do
    sha256 "13619318928c8b97c4c029a90a1995f993ed444a7d762bb3731f007e984c2d03"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg",
      verified: "ftp.mozilla.org/"
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
