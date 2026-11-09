cask "firefox@beta" do
  version "160.0b5"

  language "cs" do
    sha256 "1c22f70f74c40b70839dd020ad12472116be1afdecce7c9da9f04f34ee05556b"
    "cs"
  end
  language "de" do
    sha256 "f7e6ec618820d2b9848d77f1c213de1142112d3c3d94fdac766b667e39f6bddd"
    "de"
  end
  language "en-CA" do
    sha256 "2be49513cef945edb1cffc05708177d59ab8bf65eef7b981c56427c17c4b5f4e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8b91a42d82638dcb94b64affbdfe095f646a684d80741bce652c663a02a0d466"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eda312fdd57b6ba1d302d0862a9a02ef0707d585544c34137768ade8d5faee66"
    "en-US"
  end
  language "es-AR" do
    sha256 "ca0c0f13fdee7b93c349c44c39c1f387966ed600f34fc49a3b26832d69b9c5b2"
    "es-AR"
  end
  language "es-CL" do
    sha256 "2a037e3d1d1b8614d7599672878ac54b60ae92af2ced24ff8d33f3b59a687f94"
    "es-CL"
  end
  language "es-ES" do
    sha256 "3e7fd29fa0df72d05ef8e15e49e5cb38d5c456645b9de72112392f20cde6b418"
    "es-ES"
  end
  language "fi" do
    sha256 "8f707019412ad35e0e3de28943a88c2972df0d2abf83cbfdbb79110009b7c9f8"
    "fi"
  end
  language "fr" do
    sha256 "eaf72d947f16b0459bc6bf5ef23b48595b42042e5e3c34318387377e329157c6"
    "fr"
  end
  language "gl" do
    sha256 "f07f720a095b5a4911b4c9eb7680689279898761c95987a07f05aad57b1e1ec3"
    "gl"
  end
  language "in" do
    sha256 "6da586426753115e088ec907c8a4472b9a5ac7c66e961a00de151c5e08102b10"
    "hi-IN"
  end
  language "it" do
    sha256 "17d7fafbc945b0c92b73cbdb0a272318266c322df189376bba9127eae2ebc333"
    "it"
  end
  language "ja" do
    sha256 "097aa211aa38826b2a2fc689e5cc4f1a5c7e37a754ce02fd6e2d4f3956757713"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f07bb9523fa262e1eb8e5d78b372dc1a24cef1194758cbe45020187a2389addb"
    "nl"
  end
  language "pl" do
    sha256 "09decd62268cc183e1921bb3a8cb3aec8ac77a4885f76aa7bc5ec0a31c182ca0"
    "pl"
  end
  language "pt-BR" do
    sha256 "e12ea59cc4800814544ecf67416268eca8f904ca12cdada007437e0c0587e1fc"
    "pt-BR"
  end
  language "pt" do
    sha256 "806ff089c01c6e06215972cb36982e7cef1f0d6f73d8b42ad50efe3875b52429"
    "pt-PT"
  end
  language "ru" do
    sha256 "7553a7aab613c094763ab1551e2afa886e9c8f331ff0a048d2b74343b2d1ea85"
    "ru"
  end
  language "uk" do
    sha256 "e63a97990f300ef5c7816938b5aa964f316aca6d41389f91ede46c5592863733"
    "uk"
  end
  language "zh-TW" do
    sha256 "169fae41e59360739252a431ecf9cbdbb7c8f9601060c0ae978729a3d04e93fc"
    "zh-TW"
  end
  language "zh" do
    sha256 "379b46edb78e7d56a74302db00f4adb6d2468b7ee593408a6d993980a724d746"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  name "Mozilla Firefox Beta"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#beta"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["LATEST_FIREFOX_RELEASED_DEVEL_VERSION"]
    end
  end

  auto_updates true
  conflicts_with cask: [
    "firefox",
    "firefox@cn",
    "firefox@esr",
  ]
  depends_on :macos

  app "Firefox.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
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
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
