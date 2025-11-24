cask "firefox@nightly" do
  version "147.0a1,2025-11-24-09-47-51"

  language "ca" do
    sha256 "0d7824ac5fd86cc02cafca897e6fea3e78891b9fb4cfa466d78c082d1f9747bc"
    "ca"
  end
  language "cs" do
    sha256 "fca78e31136370c2693749bef9156c8c0a40be06d2091a05f40948a160c4cea4"
    "cs"
  end
  language "de" do
    sha256 "9d8b19e33242dd7851743e9537155ade7218ea9112bc71375fd234a0c4772b9e"
    "de"
  end
  language "en-CA" do
    sha256 "4bf3daac64c69a89e6303f23f21e6d694195da8720e1c2a69281a1b90518bf5c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "717957b8715e064904cde4cf5743d71543c16aae5cde6aa1d1618af09c595b17"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d2765a4052bacd6d65395c29fcf1a3f8899b94f95cfa652cdf655dcbb790c78e"
    "en-US"
  end
  language "es" do
    sha256 "83a1ca17079d6d03659101da3540eced7be9b89b0b1f7753368dd4f88a3cb14e"
    "es-ES"
  end
  language "fr" do
    sha256 "821273ab184dddd37fc6e4d4de3980f59de71eb6bba6cd2def2c44949e2a10c9"
    "fr"
  end
  language "it" do
    sha256 "bb6b663db72bc7338527546075d4844e6ddfb1db05d6c3bf1fcafcd0df5f820d"
    "it"
  end
  language "ja" do
    sha256 "f16c6111fbf5dfa5bc78ab0a8c63c7774f2715420ec46bb2efd36bd88d99144e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f63e27e65291aaf6046735cac0bc892b289b450858c8c980ebccff318f791960"
    "ko"
  end
  language "nl" do
    sha256 "281b52fd74f7ba8c8855de64051f04f221790d41e40ade42093643b9bdd624b7"
    "nl"
  end
  language "pt-BR" do
    sha256 "8ced3f593e2a91827059859449e5285369efdfb2a8046deec184124154f46130"
    "pt-BR"
  end
  language "ru" do
    sha256 "5434454ea82d6aa37a403c9df1048be66dbef3af73ccb7c954c34e64fb10ca0f"
    "ru"
  end
  language "uk" do
    sha256 "5390586741c91188d069cc5754faaf8b5c732f6c1f65c8f32a3e130399b80cb1"
    "uk"
  end
  language "zh-TW" do
    sha256 "1d8ea1bb866bf0b22ccd148825fdd63c3d51ba8c4a507d9d8c7176a17a1bfb37"
    "zh-TW"
  end
  language "zh" do
    sha256 "dfa3aac91ae64d93adb1619a86172cf86bf24fd7d91500cabbb5e5103bfe363d"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
