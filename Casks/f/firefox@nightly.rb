cask "firefox@nightly" do
  version :latest
  sha256 :no_check

  language "af" do
    "af"
  end
  language "ar" do
    "ar"
  end
  language "be" do
    "be"
  end
  language "bg" do
    "bg"
  end
  language "bn" do
    "bn"
  end
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
  language "eo" do
    "eo"
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
  language "fa" do
    "fa"
  end
  language "ff" do
    "ff"
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
  language "gn" do
    "gn"
  end
  language "gu" do
    "gu-IN"
  end
  language "he" do
    "he"
  end
  language "hi" do
    "hi-IN"
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
  language "ka" do
    "ka"
  end
  language "ko" do
    "ko"
  end
  language "mr" do
    "mr"
  end
  language "my" do
    "my"
  end
  language "ne" do
    "ne-NP"
  end
  language "nl" do
    "nl"
  end
  language "pa-IN" do
    "pa-IN"
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
  language "si" do
    "si"
  end
  language "sq" do
    "sq"
  end
  language "sr" do
    "sr"
  end
  language "sv" do
    "sv-SE"
  end
  language "ta" do
    "ta"
  end
  language "te" do
    "te"
  end
  language "th" do
    "th"
  end
  language "tl" do
    "tl"
  end
  language "tr" do
    "tr"
  end
  language "uk" do
    "uk"
  end
  language "ur" do
    "ur"
  end
  language "zh-TW" do
    "zh-TW"
  end
  language "zh" do
    "zh-CN"
  end

  url "https://download.mozilla.org/?product=firefox-nightly-latest-l10n-ssl&os=osx&lang=#{language}"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

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
