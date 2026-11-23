cask "firefox@developer-edition" do
  version "162.0b1"

  language "ca" do
    sha256 "7766b8f8b442cc4d726b63965abe2c0d8a4c07e978f3f6a77d1751c1bae0137c"
    "ca"
  end
  language "cs" do
    sha256 "e3937247dc21c97839c6e01e54bff58c811186c58fe8d58e8e684898e1ada11d"
    "cs"
  end
  language "de" do
    sha256 "0edf92f7065564a77b523143ba6a9d444de1b0f2b53f69a55a2cd2eb431ea429"
    "de"
  end
  language "en-CA" do
    sha256 "2009fe140c88e068328d8f0191e072edabea1cabb25c69fa94fef681ab53b570"
    "en-CA"
  end
  language "en-GB" do
    sha256 "5f1f9fbacd099f63aa8a016fd98a15378342f880ee8d9dd5331dca845a285b31"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3ab47495f1b98f5576b7b5dd5764cb5dc015268b85ab042aa76f6bff5302a0f0"
    "en-US"
  end
  language "es" do
    sha256 "461516a2ccde05de2b8c22d52571973337518afe1bc1519f6090444f2c13c6bb"
    "es-ES"
  end
  language "fr" do
    sha256 "f175f18a2c0003e906ca4560e4d5f1d9162ec9fc7d88465d836ab5f24807d58b"
    "fr"
  end
  language "it" do
    sha256 "0c96ec4933857184783e55ed86f1c2d810f463a179957699483d88ae23a2803a"
    "it"
  end
  language "ja" do
    sha256 "11696289f45edbb80a5ed5115f4028b152dd043cd823e51e2d980851326e6efa"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "3635e781aa0f0a68814dfe917394b92b5672237d41a2ebf1ab3692f32edc97a1"
    "ko"
  end
  language "nl" do
    sha256 "a96b21cccc273ba9f4b378cf516a38a88d1cd848bce19608e2cf09c2fd5bba86"
    "nl"
  end
  language "pt-BR" do
    sha256 "e41cb8d70c5deac459d1ef264aea9815df29f98da84a419db3c777148a73aa80"
    "pt-BR"
  end
  language "ru" do
    sha256 "1ed75431f1b3574f80d96dbdb99f5773f67d23a503670eec1dd2900eddda2846"
    "ru"
  end
  language "uk" do
    sha256 "14d5b765425499f2ad2a0d0ead45424c5af214a5b7c7eba86d661880a333e9df"
    "uk"
  end
  language "zh-TW" do
    sha256 "a38ea784ddb0531ae6a4129b0e40f0cdf4230a53c10c570bfdbf338ff356369f"
    "zh-TW"
  end
  language "zh" do
    sha256 "cbe56f8f9f83a91ebf5fd1f176ee1b4e7e3b2c4e23987f4489c8ed9a484a531a"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
