cask "firefox@nightly" do
  version "160.0a1,2026-10-11-21-35-19"

  language "ca" do
    sha256 "2f61c1dc3dcdd80178e7503119f0dc352822f04fcb150fac51dab8b1d15789a0"
    "ca"
  end
  language "cs" do
    sha256 "6c581a1ae09aaf83954cb7d04724252c4f081be368137cb45715fda28455aa8a"
    "cs"
  end
  language "de" do
    sha256 "40a9ce0b64eb855cde8513c47b467ba09c1404f35357baf5701b15cbbc09327d"
    "de"
  end
  language "en-CA" do
    sha256 "1b778c0b0812a3beebea2f2a440207b14b342b3daf9ac44a4cad4fe739cfa3fa"
    "en-CA"
  end
  language "en-GB" do
    sha256 "89ac74cc7282adff264ce0f281701b289a69d063fc2cfe6fefa1ad40c24666b5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d429963e62a0f266e3fe0832cf27fe61f035104f821eb3d5a65a94917df471fc"
    "en-US"
  end
  language "es" do
    sha256 "660e3ffb6ce4d61d03fe21d2097b2b83ce9ab5f0b2882161100c34eb66a43342"
    "es-ES"
  end
  language "fr" do
    sha256 "039df9bba534433cf7fd3628492857dee2ad2c279e49e5510304186d56b78be0"
    "fr"
  end
  language "it" do
    sha256 "d8b2b5bbbb87f2024ad10333371f7bfede3e713888aadb6a9b9f6dba59102f86"
    "it"
  end
  language "ja" do
    sha256 "47b063fec4d3e23b5663f226b48ba3ab08bdda05306b2c3138a9364eb598ed2e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "89745640a856a487014dacf4ebabe1381f9b4ae1e2ee3d8a4666266b2789abf1"
    "ko"
  end
  language "nl" do
    sha256 "76fcd4f06698847c31e28a087e87bbdf71a697409871c127331962471a4a2481"
    "nl"
  end
  language "pt-BR" do
    sha256 "40f7330b494ffa6c5d0553ae13fbd5cfd6e33b443827c297c8fe2ecaccf138d7"
    "pt-BR"
  end
  language "ru" do
    sha256 "1f8f72c5a814962a431c48cf358dfc8ed230cf83d3d93d2e5817ed6b4f94e392"
    "ru"
  end
  language "uk" do
    sha256 "d4ed38ad292c4d9472e491b5a2658614c23a74adc1374d13167e53e5c381874f"
    "uk"
  end
  language "zh-TW" do
    sha256 "28256391a657976815287bdfed40ce3145a938ce77fe7c7e7db65c96fe956f8a"
    "zh-TW"
  end
  language "zh" do
    sha256 "2d9f90997e799c8d77e8a1837f5692d413adefd90ccf13d65d4158d97c5e79a1"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
