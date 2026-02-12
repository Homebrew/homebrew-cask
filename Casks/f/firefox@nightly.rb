cask "firefox@nightly" do
  version "149.0a1,2026-02-11-16-21-25"

  language "ca" do
    sha256 "075e263dfc3fe527a88dfe94d84c45060dddadd239b9e5b24d7851b06958c3a7"
    "ca"
  end
  language "cs" do
    sha256 "77e67ebfea683a47ae424fddc4df26a6abaa88f06a2cb4a1f1d68c36a2b32b37"
    "cs"
  end
  language "de" do
    sha256 "41f235cb6aa64936aee4a8c4c6c785b2f3f6173aeeebc15154b201a9d385365c"
    "de"
  end
  language "en-CA" do
    sha256 "289fd29de57301e3abf9d3def8e0eff0d550468f274e49d627ed969a8adb7380"
    "en-CA"
  end
  language "en-GB" do
    sha256 "3489323d245d8b875abd42ce7b83b6ddfcab32e2af8858698fd2cbb40382f360"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6ac9cb11f2470100dd78ffca84dca27787cb8900f041d6b006c6fcb48a533e44"
    "en-US"
  end
  language "es" do
    sha256 "735e6e3346e4da8ab53949f7fdc9063cf4e08c4562a83aaeb5eadb8d97fac8db"
    "es-ES"
  end
  language "fr" do
    sha256 "0b2d59f79a7df32b5b08bc6ca4a6e92b37bec129567cd4fa646c40d67e3c5537"
    "fr"
  end
  language "it" do
    sha256 "4e33762a726a520a5aae98edee9e136640eafeb4df012488f38ed0f04ead86f6"
    "it"
  end
  language "ja" do
    sha256 "0a931b7c9173e4d964995ec7037694c54eca0d205a7d13a1ae86ee5cad03a3dd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "72468772af77ff0740f211b22638478647d9c3ca0d2e6680500a281fca43695c"
    "ko"
  end
  language "nl" do
    sha256 "a619decb87c0c225ad6f6d43c8043958cf52cf1201a24622ac8da3f502147887"
    "nl"
  end
  language "pt-BR" do
    sha256 "352b587b09f0c2d92c7c12370442975f56b19941c1b013038b568155af1f30b8"
    "pt-BR"
  end
  language "ru" do
    sha256 "14b0bf313b306bafb4bae29f916971f97a62f944c166c1634efe0a265a0c8f78"
    "ru"
  end
  language "uk" do
    sha256 "fa09e6854b078f2b6e5bdd397ad5e6c78d5052064af100b882924da494359d02"
    "uk"
  end
  language "zh-TW" do
    sha256 "436ac115d13f89dbdafd60f31f7b2449c5bce33993e98c39f87308523a64e999"
    "zh-TW"
  end
  language "zh" do
    sha256 "2ca83bd07a6749ca4e33fdc8525bb4c514ce01bd2ba5dff1a00949840212a1b0"
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
