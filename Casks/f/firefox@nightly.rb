cask "firefox@nightly" do
  version "148.0a1,2026-01-03-21-25-57"

  language "ca" do
    sha256 "db52fd0e24bee5f3c6b07f7f100e7f4916f7588100f3e66e43aafdde430553ae"
    "ca"
  end
  language "cs" do
    sha256 "c1ab69641a775f6ab52a007d45ca3eeb4652d14524f39a9e110151b0ea42e131"
    "cs"
  end
  language "de" do
    sha256 "015096367af217a87a40db262a037ca33d86993fddf1e529f9db315e564e0c83"
    "de"
  end
  language "en-CA" do
    sha256 "905c82c7bb71a2a1ec28bf503ceff1c790549b14fd2c4d0beb3fbdade7261451"
    "en-CA"
  end
  language "en-GB" do
    sha256 "430172eafe77d5a91002cf67d4ff71aeee51406a236df28721e778219efe7ea2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "441ddb598df7f4f6f9789b7b521a0bc10d02c187d0aada5445d74448397eb008"
    "en-US"
  end
  language "es" do
    sha256 "8f09a8220b6c304adae078095ab211031b468b5b5655583c82ec0f0a33bde5d4"
    "es-ES"
  end
  language "fr" do
    sha256 "9e40888e1eefdab4904902c37fdd9125426f94b9f704c48d99130714286e0cb4"
    "fr"
  end
  language "it" do
    sha256 "bebf166fa000ff5447fe5156a9b8c11eefb18874b620d54f3f14c1cf876f248b"
    "it"
  end
  language "ja" do
    sha256 "44d33b9164e7f9edadc6f780a603bff6e6c3e309ca3cb843bac64efeb890476a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "bc9fb4532e59031b10ac6f8c3e31f995269375d021755338df3c9a409142c15d"
    "ko"
  end
  language "nl" do
    sha256 "332a36d6d34a991ccd1b095f1e8ca1427e5396ff4e931a768b7b080aab5658cf"
    "nl"
  end
  language "pt-BR" do
    sha256 "1cbd83bd9b46ba74444fc5e048230fbbbe281b6aedb427be92db0f713299deae"
    "pt-BR"
  end
  language "ru" do
    sha256 "8946de762048bf87ab5f76aa0b2fba13fa023df8a30bb7e8a94eb371e8ea925f"
    "ru"
  end
  language "uk" do
    sha256 "aecc2406a29115c176c7ffb7a116ab9fb0787cbaae25bddc4cc2d8decf7a59bf"
    "uk"
  end
  language "zh-TW" do
    sha256 "566af5c960734c6f55597948d406972cdbab3f699873ef0c45516c4786a7eaa2"
    "zh-TW"
  end
  language "zh" do
    sha256 "8e0b55c106ab077d9e45667d223aa4185b7bd350441bd29cb6ebe93367e5bae1"
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
