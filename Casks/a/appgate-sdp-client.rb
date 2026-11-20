cask "appgate-sdp-client" do
  version "7.0.0"
  sha256 "a632d0393a54bedd65d286c4f37ee304f7bc88ebd0cd7f2e80bb6a023a7c4b84"

  url "https://bin.appgate-sdp.com/#{version.major_minor}/client/Appgate-SDP-#{version}-Installer.dmg"
  name "AppGate SDP Client for macOS"
  desc "Software-defined perimeter for secure network access"
  homepage "https://support.appgate.com/support/appgate-ztna-user-guide"

  livecheck do
    url "https://support.appgate.com/support/downloads"
    regex(%r{href=.*?/Appgate[._-]SDP[._-]v?(\d+(?:\.\d+)+)[._-]Installer\.dmg}i)
  end

  depends_on :macos

  pkg "Appgate SDP Installer.pkg"

  uninstall launchctl: [
              "com.appgate.sdp.client.agent",
              "com.appgate.sdp.tun",
              "com.appgate.sdp.updater",
              "com.cyxtera.appgate.sdp.client.agent",
              "com.cyxtera.appgate.sdp.helper",
              "com.cyxtera.appgate.sdp.tun",
              "com.cyxtera.appgate.sdp.updater",
            ],
            quit:      [
              "com.appgate.sdp",
              "com.cyxtera.appgate.helper",
              "com.cyxtera.appgate.sdp",
            ],
            signal:    ["QUIT", "com.cyxtera.appgate"],
            pkgutil:   "com.appgate.pkg.appgatetun.component"

  zap trash: [
    "~/Library/Application Support/Appgate SDP",
    "~/Library/Application Support/appgate-ui",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.appgate.sdp.sfl*",
    "~/Library/Caches/com.cyxtera.appgate.sdp.uninstall",
    "~/Library/Preferences/com.appgate.sdp.plist",
    "~/Library/Preferences/com.appgate.sdp.service.plist",
    "~/Library/Preferences/com.cyxtera.appgate.sdp*",
    "~/Library/Saved Application State/com.cyxtera.appgate.sdp.savedState",
  ]
end
