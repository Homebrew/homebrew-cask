cask "firefox" do
  version "96.0.1"

  language "cs" do
    sha256 "48dc297a54426aea952d7a22701307e838bc166c9736f50edb75454b6ced62db"
    "cs"
  end
  language "de" do
    sha256 "2833945fc439516cb3c889f52a0813cb3ca79c8c4ea278416160d6035c94f277"
    "de"
  end
  language "en-CA" do
    sha256 "3b9e48156dacf5f9b657abedbe4080cd45d5ec9fceacae8a91c12662d6a27347"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b5c96b40a33aea6e5b00d422669cac3eff93c62c63ad0abaa456057486d96e9d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0c6783ed2b4f7483541c886335964358583f93a8efe9dfdf1c543290665c9013"
    "en-US"
  end
  language "eo" do
    sha256 "b4912b0cd6e7a329a287e01ec4c7fa23da2ff8226c97cf091ed7c50afe26b224"
    "eo"
  end
  language "es-AR" do
    sha256 "a3ab1b672159330448bd1bb679065abec715a64adc6c5bc8ba01f7445ad9358a"
    "es-AR"
  end
  language "es-CL" do
    sha256 "85b64d894a6f768fc189a8d9884672f46763a8b54c47cff90be80bf70045dc5a"
    "es-CL"
  end
  language "es-ES" do
    sha256 "75f87647ff9f2636dd35d286bb398650ec936f771f903bffc3f57d7670d48378"
    "es-ES"
  end
  language "fi" do
    sha256 "67d629d7a09a934df73a44f74abc126c9a4c81356ae4c75460526486c85fcccd"
    "fi"
  end
  language "fr" do
    sha256 "60aaa3e745f36fe74383fd219af8f1cbf95539cc16ba755b1ee22ec05700bc08"
    "fr"
  end
  language "gl" do
    sha256 "fa9eb1b50d275c71908e891858adb08dcf759fede7fded49df54f0d053ffb74f"
    "gl"
  end
  language "in" do
    sha256 "ffcfe1ad25953d5793eb85a5654ae13444476cdfe4c9a7950873fa0224e23ab8"
    "hi-IN"
  end
  language "it" do
    sha256 "1708cc3d7f9cb7b3d3c22819e9505cb02f93aff4f1d63c2b4d6e5e2cc117567a"
    "it"
  end
  language "ja" do
    sha256 "4a4a87a0a640b3942d9ee50b4772b590818e07a853627a71e68622ef615d827a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "88dfc30b87a6e27f97c2081fedac9281268cfa7cf7b61242fb7b3bf1bbc4c1d2"
    "ko"
  end
  language "nl" do
    sha256 "2f9d6656c577ccb22df376f8b92b91933d4c55b73d02a96399df47b0de900c95"
    "nl"
  end
  language "pl" do
    sha256 "82273c90b6e214ce78255ff070a9f1f4af971f6baa7b1b957d6108adf412dbdd"
    "pl"
  end
  language "pt-BR" do
    sha256 "5bfa1df02243dd4186ce7c2e7ce72f4324a341762c3280d6dfdcfecc0b80f6a3"
    "pt-BR"
  end
  language "pt" do
    sha256 "29ab034658dbf710ed14de9e77cc9b422dada1e9003051dee81fd2b2a5ebd87c"
    "pt-PT"
  end
  language "ru" do
    sha256 "c627916aaf9eb11bda648788395d79a539eecc7c6c4c1a59fe4c55a792eec7db"
    "ru"
  end
  language "sv" do
    sha256 "05210ce9665a97e82b04fd76e57c1fbe1e34559c0fe6a505bbbcb6fc4fa994ac"
    "sv-SE"
  end
  language "tr" do
    sha256 "b3606d829912ed1d7b11ad35e96b623f28844baf746d0be6e935a5d8995f2622"
    "tr"
  end
  language "uk" do
    sha256 "84fa358a885cdfd828ac0c13a82c4591d32c3b4aab4f94fc7cca96a5f58e2b84"
    "uk"
  end
  language "zh-TW" do
    sha256 "70c16a4db875de87dbd65ce4db06a17599b8bb1216ae9521a2aafde3ef852495"
    "zh-TW"
  end
  language "zh" do
    sha256 "ce81989e0b0920eda1abefa72a9c27848e2c106fc2ab5cf3d5f6ab25727828b8"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
  name "Mozilla Firefox"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/"

  livecheck do
    url "https://download.mozilla.org/?product=firefox-latest-ssl&os=osx"
    strategy :header_match
  end

  auto_updates true
  conflicts_with cask: [
    "homebrew/cask-versions/firefox-beta",
    "homebrew/cask-versions/firefox-esr",
  ]
  depends_on macos: ">= :sierra"

  app "Firefox.app"

  uninstall quit:   "org.mozilla.firefox",
            delete: "/Library/Logs/DiagnosticReports/firefox_*"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
    "~/Library/Application Support/CrashReporter/firefox_*",
    "~/Library/Application Support/Firefox",
    "~/Library/Caches/Firefox",
    "~/Library/Caches/Mozilla/updates/Applications/Firefox",
    "~/Library/Caches/org.mozilla.crashreporter",
    "~/Library/Caches/org.mozilla.firefox",
    "~/Library/Preferences/org.mozilla.crashreporter.plist",
    "~/Library/Preferences/org.mozilla.firefox.plist",
    "~/Library/Saved Application State/org.mozilla.firefox.savedState",
    "~/Library/WebKit/org.mozilla.firefox",
  ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla/updates/Applications",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla",
      ]
end
