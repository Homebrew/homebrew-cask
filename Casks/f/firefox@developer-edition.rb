cask "firefox@developer-edition" do
  version :latest
  sha256 :no_check

  language "ca" do
    "ca"
  end
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
  language "es" do
    "es-ES"
  end
  language "fr" do
    "fr"
  end
  language "it" do
    "it"
  end
  language "nl" do
    "nl"
  end
  language "ja" do
    "ja-JP-mac"
  end
  language "pt-BR" do
    "pt-BR"
  end
  language "ko" do
    "ko"
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

  url "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=osx&lang=#{language}"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  depends_on macos: ">= :catalina"

  app "Firefox Developer Edition.app"

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
