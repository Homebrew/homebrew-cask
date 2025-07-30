cask "firefox@nightly" do
  version "143.0a1,2025-07-29-21-04-51"

  language "ca" do
    sha256 "5a46f7e85319622e6be41f9ed93e887854d64859b9794c5e1aaf722abed77fa4"
    "ca"
  end
  language "cs" do
    sha256 "38e16541a89eeacdbaf5f7a191e820f58dfbb0c1eebef20db77d49af414cb76b"
    "cs"
  end
  language "de" do
    sha256 "3c579f26781c821a0a8971d025ab5e31cf64661f067a4fb03aa56ebeba3a62a7"
    "de"
  end
  language "en-CA" do
    sha256 "448e989701e16d8c112a12f2a036453e3c61e46975657937f82e07f69c5f93a0"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ea03a06d7d9a41a64896fe65539037948ed1387a658de46872639aafa71b5b72"
    "en-GB"
  end
  language "en", default: true do
    sha256 "411891842e5d7e3676a7664a3c78f1e9313cd403e9ddf588a2a3ae17f27ebb25"
    "en-US"
  end
  language "es" do
    sha256 "fb76c374e0a9f22075725a96d6d69babe3551a28c592f3f54bf73df33fbe337f"
    "es-ES"
  end
  language "fr" do
    sha256 "320dfc0890435aa5ffffdaeabc6900d63e27de4bfa771d71241bf77f56e5c2fb"
    "fr"
  end
  language "it" do
    sha256 "2cbb714092fa29dbd440e70540d4d78758d5623317b26d15b90898109c00fb68"
    "it"
  end
  language "ja" do
    sha256 "17e0142e96a0d645c1c9c23fd4504333bd6ea931830d0e21f640908fa48fd0b5"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "14b030064b8c0a159e19b76bc41b9461d3bb28b77722ea19bc81ae747998a8a4"
    "ko"
  end
  language "nl" do
    sha256 "1d71d7b71d57f703ffe8d062723bc6b7aadbd900c259cd10145d8c6a16715575"
    "nl"
  end
  language "pt-BR" do
    sha256 "f84d118048f4e044fe749b5ec229c54a6761c97ad6ba29e24102fcc7c0f166fa"
    "pt-BR"
  end
  language "ru" do
    sha256 "987e296441aab24c9e81f3ffa9f98987769ffa560cbe513e091fa1c6043a4ab5"
    "ru"
  end
  language "uk" do
    sha256 "4e9ff68c550b2f755ac1912b4dd9b693ee899341c95b5c5dbda0687e58e411f9"
    "uk"
  end
  language "zh-TW" do
    sha256 "a2bb611a7ea18ab4207e063e57357b15691f8b46c08d31f3e3060572eb540701"
    "zh-TW"
  end
  language "zh" do
    sha256 "88875e853f45e95bb5b64ee11c2dfe69b7cebab98126fd0fef9c23078674f73d"
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
  depends_on macos: ">= :catalina"

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
