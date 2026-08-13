cask "proxyman" do
  version "6.15.0,61500"
  sha256 "094615f2e42340d83ab2aef5f7f14ac2dfa6767e31d5cf4b203370f92b922497"

  url "https://download.proxyman.com/#{version.csv.second}/Proxyman_#{version.csv.first}.dmg"
  name "Proxyman"
  desc "HTTP debugging proxy"
  homepage "https://proxyman.com/"

  livecheck do
    url "https://proxyman.com/osx/version.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Proxyman.app"
  binary "#{appdir}/Proxyman.app/Contents/MacOS/proxyman-cli"

  uninstall_postflight_steps do
    delete_keychain_certificates "Proxyman"
  end

  uninstall launchctl: "com.proxyman.NSProxy.HelperTool",
            quit:      "com.proxyman.NSProxy",
            delete:    "/Library/PrivilegedHelperTools/com.proxyman.NSProxy.HelperTool"

  zap delete: "/Users/Shared/Proxyman",
      trash:  [
        "~/.proxyman*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.proxyman.nsproxy.sfl*",
        "~/Library/Application Support/com.proxyman",
        "~/Library/Application Support/com.proxyman.NSProxy",
        "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.proxyman.NSProxy",
        "~/Library/Caches/com.proxyman.NSProxy",
        "~/Library/Caches/Proxyman",
        "~/Library/Cookies/com.proxyman.binarycookies",
        "~/Library/Cookies/com.proxyman.NSProxy.binarycookies",
        "~/Library/HTTPStorages/com.proxyman.NSProxy",
        "~/Library/Preferences/com.proxyman.iconappmanager.userdefaults.plist",
        "~/Library/Preferences/com.proxyman.NSProxy.plist",
        "~/Library/Preferences/com.proxyman.plist",
        "~/Library/Saved Application State/com.proxyman.NSProxy.savedState",
        "~/Library/WebKit/com.proxyman.NSProxy",
      ]
end
