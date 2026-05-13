cask "firefox@beta" do
  version "151.0b10"

  language "cs" do
    sha256 "ee7188b283f03ac7e04594ee5912dc072752fb59dcb02d30e2670d01d4645e13"
    "cs"
  end
  language "de" do
    sha256 "6e545e12a9d457c098edaca9f1ea1d055e1b86676c85b175ffd0960822cbf55b"
    "de"
  end
  language "en-CA" do
    sha256 "c8e043cb614b4b5042f57814321127887801767124010b1cf0b677f9f2f3705b"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9683be16fcdbda4790a1a2daf8fc5d465e6de5d92035f75b429846d72e719e7d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7e8f1f83b9f78b39e2788034d585cc5732aa0fdd0a650b33d2afcc1c933e6f48"
    "en-US"
  end
  language "es-AR" do
    sha256 "fcdf8615ccb3828ec44b3e963b0c553348b7fdbc379b6b4a39d7db00408fe465"
    "es-AR"
  end
  language "es-CL" do
    sha256 "7be72cad4051731b3033463003b81e78d10eb6b6c15ee988144bcaa29f0b6820"
    "es-CL"
  end
  language "es-ES" do
    sha256 "908f25fbb7c078bf235b2105b97e2da310ff3e64543d1b03c18bf0e8e51911d9"
    "es-ES"
  end
  language "fi" do
    sha256 "7c04b4c5bd5ad7fb0c46215ce348334f3e44982f5359c9556d3ffb4a3edf884c"
    "fi"
  end
  language "fr" do
    sha256 "02f9838b15bf8c8769066c654439f3dccbffc5d7730acc792bf0248c9aad9688"
    "fr"
  end
  language "gl" do
    sha256 "3c721740c109c869646c8bc06443a48031b9b7f9dfb8a84b18133f9ca3c86bc7"
    "gl"
  end
  language "in" do
    sha256 "db5c74073dd7ef3296bac73e371063897137a68940a018ce01391c78d47d2c9a"
    "hi-IN"
  end
  language "it" do
    sha256 "97d03e2f952a9304abfb0c64739060a7a21377ccd997f9fe05da7badfe1426fb"
    "it"
  end
  language "ja" do
    sha256 "1bea7103f4e50274f01236b84c0a18811ee78c06d91648c0a24e757690575d8a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f0780c777b464514cb37e773d35ae4ede50f1ee7a86a5f1ff27df0be108c4b2d"
    "nl"
  end
  language "pl" do
    sha256 "26cc52247f94835db2f8ea9da2084c9ae6a2c049aa8e7fdccb21fc1e94894253"
    "pl"
  end
  language "pt-BR" do
    sha256 "002f7b3a3ec4f547b3a25cf4250ce8db9d9935059ac38044f6103057f0e3ef3a"
    "pt-BR"
  end
  language "pt" do
    sha256 "a1e59ec1cb09a4d52965f03ad745c6c391534e4ed3fb0130ee81c3df250396f1"
    "pt-PT"
  end
  language "ru" do
    sha256 "dd8e76880d6ea620ad54ad659a45ccf8a6e1bca2f65e44eb4d01278c24660968"
    "ru"
  end
  language "uk" do
    sha256 "d04cfa46e2af549add7e4c7ff0a9f89fc73275a8a3a347ff873a6b697e5d8455"
    "uk"
  end
  language "zh-TW" do
    sha256 "40501e9bf1e1da75af617a0c6c9fa6ad3fe6dec87a3e7f673a40b56990046a20"
    "zh-TW"
  end
  language "zh" do
    sha256 "8e0ef1d01e10affff50d18b2d6c50fee2b755ad0fd3f78340e0c705bf837447f"
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
