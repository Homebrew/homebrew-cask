cask "firefox@beta" do
  version :latest
  sha256 :no_check

  language "cs" do
    "cs"
  end
  language "de" do
    "de"
  end
  language "en-CA" do
    "en-CA"
  end
  language "en-GB" do
    "en-GB"
  end
  language "en", default: true do
    "en-US"
  end
  language "es-AR" do
    "es-AR"
  end
  language "es-CL" do
    "es-CL"
  end
  language "es-ES" do
    "es-ES"
  end
  language "fi" do
    "fi"
  end
  language "fr" do
    "fr"
  end
  language "gl" do
    "gl"
  end
  language "in" do
    "hi-IN"
  end
  language "it" do
    "it"
  end
  language "ja" do
    "ja-JP-mac"
  end
  language "nl" do
    "nl"
  end
  language "pl" do
    "pl"
  end
  language "pt-BR" do
    "pt-BR"
  end
  language "pt" do
    "pt-PT"
  end
  language "ru" do
    "ru"
  end
  language "uk" do
    "uk"
  end
  language "zh-TW" do
    "zh-TW"
  end
  language "zh" do
    "zh-CN"
  end

  url "https://download.mozilla.org/?product=firefox-beta-latest-ssl&os=osx&lang=#{language}"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on macos: ">= :catalina"

  app "Firefox.app"

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
