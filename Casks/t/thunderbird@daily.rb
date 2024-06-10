cask "thunderbird@daily" do
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
  language "ca" do
    "ca"
  end
  language "cs" do
    "cs"
  end
  language "cy" do
    "cy"
  end
  language "da" do
    "da"
  end
  language "de" do
    "de"
  end
  language "el" do
    "el"
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
  language "es-ES" do
    "es-ES"
  end
  language "es-MX" do
    "es-MX"
  end
  language "et" do
    "et"
  end
  language "fi" do
    "fi"
  end
  language "fr" do
    "fr"
  end
  language "fy" do
    "fy-NL"
  end
  language "ga" do
    "ga-IE"
  end
  language "gd" do
    "gd"
  end
  language "gl" do
    "gl"
  end
  language "he" do
    "he"
  end
  language "hr" do
    "hr"
  end
  language "hu" do
    "hu"
  end
  language "hy" do
    "hy-AM"
  end
  language "is" do
    "is"
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
  language "lt" do
    "lt"
  end
  language "lv" do
    "lv"
  end
  language "ms" do
    "ms"
  end
  language "nb" do
    "nb-NO"
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
  language "pt" do
    "pt-PT"
  end
  language "pt-BR" do
    "pt-BR"
  end
  language "rm" do
    "rm"
  end
  language "ro" do
    "ro"
  end
  language "ru" do
    "ru"
  end
  language "sk" do
    "sk"
  end
  language "sl" do
    "sl"
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
  language "th" do
    "th"
  end
  language "tr" do
    "tr"
  end
  language "uk" do
    "uk"
  end
  language "uz" do
    "uz"
  end
  language "vi" do
    "vi"
  end
  language "zh-TW" do
    "zh-TW"
  end
  language "zh" do
    "zh-CN"
  end

  url "https://download.mozilla.org/?product=thunderbird-nightly-latest-l10n-ssl&os=osx&lang=#{language}"
  name "Earlybird"
  name "Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.mozilla.org/en-US/thunderbird/channel/"

  depends_on macos: ">= :catalina"

  app "Thunderbird Daily.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird.sfl*",
    "~/Library/Caches/Thunderbird",
    "~/Library/Preferences/org.mozilla.thunderbird daily.plist",
    "~/Library/Saved Application State/org.mozilla.thunderbird.savedState",
    "~/Library/Thunderbird",
  ]
end
