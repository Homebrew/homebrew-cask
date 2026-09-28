cask "thunderbird@daily" do
  version "159.0a1,2026-09-28-10-25-50"

  language "cs" do
    sha256 "18f2722debdda2af4f69f72c32bdec60f02a4e8466b818234311909f0e83d7c6"
    "cs"
  end
  language "de" do
    sha256 "a6c86fb0a8b7e570587714dcb24751c65ae15dc2b1fa453d896f57df7f9f64eb"
    "de"
  end
  language "en-GB" do
    sha256 "9848b3c024ead00de7e1572a0a793689b5a161a6ed5899782b7e819d35e8cbb3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f18fa6003765d70e03879deb245735f3e2d96d676331ba70160fdee28f4778d9"
    "en-US"
  end
  language "fr" do
    sha256 "f06115ecb10ef612ca311d9521a906f116bab1540ce0e159d368c322b1f094f0"
    "fr"
  end
  language "gl" do
    sha256 "60c26ac306ddfb7efb13db8c34b94dc3775b2078b469e9e221359b30c9efad9a"
    "gl"
  end
  language "it" do
    sha256 "2c45ad5b923128bad876a4a60139ed37cab37ebd28069d03ab4a96d7c66ef90c"
    "it"
  end
  language "ja" do
    sha256 "1be06d6a1d52f5fbedca677934af40ae59d1ca5ff2b3d8c46d356b563b249345"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f9055b95f06c39081428b58c46793b41f6e3663ed1a4cb7122c730e057418807"
    "nl"
  end
  language "pl" do
    sha256 "e25e16ca6078b88b2955f068408e6a7c57c76a39d7405d44d057379062b69aa5"
    "pl"
  end
  language "pt" do
    sha256 "9853e9af86b7db798ada609fc8d7069190fb13a04b1445c1ba6e0625383b5fe4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a5d0e1d5865564795d9b0017ff7a01cb2e46b73960d7135eef37c0cab3acb4eb"
    "pt-BR"
  end
  language "ru" do
    sha256 "d7188c6df965df14ea3e6b42f12e555ca0fe5383b5f2865c070f61263b016103"
    "ru"
  end
  language "uk" do
    sha256 "c73523e6c5eaadbcd71e91534b0a9ce9404106bd43499b49ca5cbb00875273d2"
    "uk"
  end
  language "zh-TW" do
    sha256 "77fadaa7768484b67ee04847fc9b53cb1c1dfb6a42c2b8c1ddf735a05072d283"
    "zh-TW"
  end
  language "zh" do
    sha256 "8dd0573277b5484954a3d10b8a2208e8e247db33661ef450a509caa5f356a835"
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
