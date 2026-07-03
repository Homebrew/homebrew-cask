cask "firefox@beta" do
  version "153.0b7"

  language "cs" do
    sha256 "1017731ac275fab9fc3397c280a80423a60576c4ad7615cd37ebe02a221238c3"
    "cs"
  end
  language "de" do
    sha256 "cb9f4c2ac55aefa46f74d7899b579abd5baa9fafbd21ce10c17ad8368196df20"
    "de"
  end
  language "en-CA" do
    sha256 "167bbff23f0d77ddf85c04ab3566da040b21094568f0bb3dfe02aee8c318b472"
    "en-CA"
  end
  language "en-GB" do
    sha256 "41ade6314c47e88f2818549017dd828d8f32f99b3d61a3b310383d453e27c271"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9ce38b03da60d246a57f95ff7efd6cf86a29133ece547dee78f337f5084dccdd"
    "en-US"
  end
  language "es-AR" do
    sha256 "7b34a28657a1b577f8fa6ae730172735ba74aa4f94effea196306a8dae3aaa46"
    "es-AR"
  end
  language "es-CL" do
    sha256 "b4c65c0af25e901d19f2e21b813e4b93a97a9eeb15edd9a90e86e740881e63d9"
    "es-CL"
  end
  language "es-ES" do
    sha256 "403a8e301ad8e4bba790bbb4f7f56271b55cff2cd4706e12ccfd269e139c9fe6"
    "es-ES"
  end
  language "fi" do
    sha256 "a9924e1df99199ba07d6514b40bc89e552627fc659ffae865a402d7afcdf27bd"
    "fi"
  end
  language "fr" do
    sha256 "d9f98fe64c67472a6165ae816a4f2470dbf7536bb0d0358fd350887de6398072"
    "fr"
  end
  language "gl" do
    sha256 "2a392f520b1f4f5ff9a65cb33ed1ec031ce3c8a287f7926b0707c29951c4734c"
    "gl"
  end
  language "in" do
    sha256 "81abe73755db123dbc0b9ffb4f951d14c10186bf01fac160035653981d39088f"
    "hi-IN"
  end
  language "it" do
    sha256 "3bcb8940f3ffd3b2c11e6fa58e3dcffe18ecbc08e726d199751f976e22b7e6b0"
    "it"
  end
  language "ja" do
    sha256 "08a36edb54799f86d1b51c6e23f6163fa6a37f729758814cd6b0a717cccceec9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0e71a119a50c34b294b7719dab96d9547de004b8021de304f0211fd5e5804d14"
    "nl"
  end
  language "pl" do
    sha256 "b4a31c32719f35545e48ecec51471bfeaf02c3cd3aa6bd9c824cfe811c9d21f6"
    "pl"
  end
  language "pt-BR" do
    sha256 "7f260deaeab1bdb04baef61f6a4b99ad871c94f28fb85967d8120b13cf02f714"
    "pt-BR"
  end
  language "pt" do
    sha256 "9fa0bc149ee2f566cd7234a9252d7a916b9b4af4751cbc97a27bb31e32483c75"
    "pt-PT"
  end
  language "ru" do
    sha256 "427a00da5e68d27589b37d139788acb754eb252ab0a4e366247a900cc2adb9fb"
    "ru"
  end
  language "uk" do
    sha256 "06b9e60fa5384e68a1302576dc234d2309451eec87a8b13e78ea79fe1ad04d9a"
    "uk"
  end
  language "zh-TW" do
    sha256 "b3b616e1ed5bb64a147c74bb94b96f2345aab4ed1a35d6b0e157831cf5d1ba2a"
    "zh-TW"
  end
  language "zh" do
    sha256 "6a37d693edf8b8154e4ca33469b98556d8d33a252a63287dc01630af1c067902"
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
