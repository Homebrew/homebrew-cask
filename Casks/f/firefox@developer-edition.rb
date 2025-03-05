cask "firefox@developer-edition" do
  version "137.0b2"

  language "ca" do
    sha256 "770cc524e67d652c645556979a5f6a0230401bb8e947d1807688a31db2d4f29c"
    "ca"
  end
  language "cs" do
    sha256 "67db240d218b8031f3b2d5bc9134b18f266cd9f8d9da5b817b195881c630ed93"
    "cs"
  end
  language "de" do
    sha256 "ca4399f1beed3eef78bd7e4770710a4293f8f0b28dc4c09d2248f273eab5670e"
    "de"
  end
  language "en-CA" do
    sha256 "aac661cc11fbf274a6455d8d6ed6fc06e441441ba3f50c49d8b0f0ed1c3929b1"
    "en-CA"
  end
  language "en-GB" do
    sha256 "aca51eef43d8237529377d824d19046471bbf91bb49b21618af3f93feee9e8e2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4b379abca46abdf76f948fb7861308ef49b8e790323c04cbcf99440471536fcf"
    "en-US"
  end
  language "es" do
    sha256 "cfcc3e7d4ab0d552111627e12b0c114ec552081d34a79c95b0427eeee967e236"
    "es-ES"
  end
  language "fr" do
    sha256 "1f508f204c3924294d7893015ca07ad7c40c56d450535ca5111e3055d678d84a"
    "fr"
  end
  language "it" do
    sha256 "3f0cec93275a81a3c3608732055084f8195a526974adb2e8d41ccd91f6970d9d"
    "it"
  end
  language "nl" do
    sha256 "a233cc3ccbd50e661758e9323a8d8f0e106f911b4a0d9d7ce0be4ffb31129ffb"
    "nl"
  end
  language "ja" do
    sha256 "7fed3e4fa2f1ba7a5396565ba394bc0fdb40a0e614ce98f864c7a2d3220ea0d5"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "b5b799ca6ba60c8b20b3be049d7e1ea45ccea1d36880c4ab2322f2ec0740d4a1"
    "pt-BR"
  end
  language "ko" do
    sha256 "295909ac624276a70b9a859ef7017c325d03a383a1cd36bb6e442e04ac14888b"
    "ko"
  end
  language "ru" do
    sha256 "bfaa93fdb2e205e08363e9b2ea3a6f2d9edfa74fad8701cde477fb00ca44cb17"
    "ru"
  end
  language "uk" do
    sha256 "ecd1941d1e509777b072bbb06328402141dcf4fe11dceaa936ee6a5fc0308bdf"
    "uk"
  end
  language "zh-TW" do
    sha256 "7ef8c42a90d499d0d30b0b71ef77c3dc48671e7bab76155a2372c154c6ad0edd"
    "zh-TW"
  end
  language "zh" do
    sha256 "e66749dbb2574ed5c3014cd2d71a422ddc829894cd5a6aa791f484849dade87d"
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
