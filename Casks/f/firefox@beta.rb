cask "firefox@beta" do
  version "147.0b9"

  language "cs" do
    sha256 "ad5da2dcd32925788048c9e74fcf2abac3a5d32a0a4eb01c16dbcb7e106d75c4"
    "cs"
  end
  language "de" do
    sha256 "14c259a02ca6d7eed0a94c10b1ac124193377917267f3a3d9d654b76e259aec1"
    "de"
  end
  language "en-CA" do
    sha256 "83d947d0c043f8d59a0244a8ef2bc65ff2be4c981819d5777e9eb1b170973624"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2c43a27d329fda82d570a05932c5f532f1f48a61bfcf3ea7ecb76dd8beabeddb"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ec968dfd927703653ac9598f45dc561a8de6721bb906f035b77daec4f6452f88"
    "en-US"
  end
  language "es-AR" do
    sha256 "87e11431e0af5ddec09168e1ea892338e862f964210a95e02c915f907436fc6b"
    "es-AR"
  end
  language "es-CL" do
    sha256 "bf85dbd6465384f91d56997e2bc9b091965ade0c97ad5c59f66c7f70222b45ac"
    "es-CL"
  end
  language "es-ES" do
    sha256 "94e3c655e0a3e3708ace34c077989e110412767c4f55c174f4dfe1cfe2fb493b"
    "es-ES"
  end
  language "fi" do
    sha256 "20d6bb608a4039247cdc11595b2182aec8871a5620d5e8a682130e94c7a82736"
    "fi"
  end
  language "fr" do
    sha256 "00178249b78d6811301fbf1c12bb86193ed2da9a824704c6a5b19b4a25688cd5"
    "fr"
  end
  language "gl" do
    sha256 "5605f995e4f85d8b884d0198fa942108971662fbe1fcdda936a12c583fc84e4f"
    "gl"
  end
  language "in" do
    sha256 "b77efe7822c05651e241955ec500a0ce97af4b056fd4ffed774c5176fcac3e67"
    "hi-IN"
  end
  language "it" do
    sha256 "ca48889e48864d1d3215696c2bd9919a2701bfe79c2bd9e4efb4b4d1c44a493c"
    "it"
  end
  language "ja" do
    sha256 "dccd84341431afe43756d0c04dff8510f05244b9f9254c7af22ceba558bb8b93"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4c1ea1c274e59e71d7897e186d8580de16d2aa6446f8f71b4d48644092a32f76"
    "nl"
  end
  language "pl" do
    sha256 "247086215b885cd2cf90b94c59a0a0bb04b1fb55aa5868921f2a3ce75aad38b7"
    "pl"
  end
  language "pt-BR" do
    sha256 "1d5cb0400a04a458656d22ed0243ab8b95b2f122631767695819233b550ab560"
    "pt-BR"
  end
  language "pt" do
    sha256 "448504f617d6ed7c3f1ec3955122599a1a9b6ea368615422a94ea24399974b07"
    "pt-PT"
  end
  language "ru" do
    sha256 "4b305e5ac60ba2348bd58aafb8f82346ebc867ff4f219c4dce8a7de8a08732ef"
    "ru"
  end
  language "uk" do
    sha256 "01ce35c26e4bbcfc13219878596aa2db7098dc3f8c2d8d2fa77f7f8405f5e787"
    "uk"
  end
  language "zh-TW" do
    sha256 "58f4edd4f27d0e5d1f951e32bb3a81d3e0894232961b1119c4c7698bf6090aae"
    "zh-TW"
  end
  language "zh" do
    sha256 "f9566961748c6cc6674dfec3f4061a394782b7d8fe694977254fc95d374dcf18"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/firefox/releases/"
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
