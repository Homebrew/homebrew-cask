cask "firefox@developer-edition" do
  version "141.0b4"

  language "ca" do
    sha256 "41603120ce4ed854a825c9db3a8362f565518a88f5cdbdc5ac1cba16a4557441"
    "ca"
  end
  language "cs" do
    sha256 "6bbdcd65ed0c5ebc8463c16d3eb51b70c410495aa095b317eafb53c160adc1f4"
    "cs"
  end
  language "de" do
    sha256 "a340272c3fb5ed2bf5f6eb04d6d9b6d1704a6083039ea71e901f43183c4eaee7"
    "de"
  end
  language "en-CA" do
    sha256 "3a629f129376d67733b921d1b950383f026d494e28aa0a1a24eedf524577c487"
    "en-CA"
  end
  language "en-GB" do
    sha256 "d979510f4fcb5140573f8458066d197d3326bf8d7fbc57ac848c5228aacfb1fb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0825c06559ec927d50e85a75840719779583c5dedb3c6840c1e5d886d8bc99ef"
    "en-US"
  end
  language "es" do
    sha256 "e8520b2fcf6e87d6b75c6c413d5c3d052a795332a27918fc6619c7643cafb253"
    "es-ES"
  end
  language "fr" do
    sha256 "a4127c84027048fceab3071b190bdae5f38de904f6717e2831ad516a1f26b3a4"
    "fr"
  end
  language "it" do
    sha256 "7f23f987eae9361f9f0781a410360121abec532fff39ee28547d6d67586480fc"
    "it"
  end
  language "ja" do
    sha256 "7fac37fcf1c564aba3fc6b778276a6b5677600003ee6dc84b2e75e796a184416"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b723dd4f96efb2c8b7fe68c45565fbec153c7a08d06bef705a05240cb016d680"
    "ko"
  end
  language "nl" do
    sha256 "19a235839d199bbeef5360eb88fa420f80a05b2e4231a95bc1033c7ee4038e25"
    "nl"
  end
  language "pt-BR" do
    sha256 "a116613aac1aab3f18522cba195d31713501a2d9d601c3aa541294497c9009da"
    "pt-BR"
  end
  language "ru" do
    sha256 "138d00f65bbe16bee887f51cb2cf39b2f5dad7620ead61344550971313c10458"
    "ru"
  end
  language "uk" do
    sha256 "3054820baeff0109a609cf7b63bca86b22d1770f073e9fe83d81e699e97a15cc"
    "uk"
  end
  language "zh-TW" do
    sha256 "ebb878c0413dc5e6f14b2ba4e99624877370c49eae11b16c06a98a4272a03b40"
    "zh-TW"
  end
  language "zh" do
    sha256 "4a62db451e9c71511d11f4407ce4fdc098d3500aa17d63ff5184587969e49aa5"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
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
