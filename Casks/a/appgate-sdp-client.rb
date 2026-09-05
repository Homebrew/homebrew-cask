cask "appgate-sdp-client" do
  version "6.7.2"
  sha256 "af6c96b03182556f02c2bd426ee1e515628b3bb10694d4d0a7a5599e6435195e"

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
    "~/Library/Application Support/appgate-ui",
    "~/Library/Caches/com.cyxtera.appgate.sdp.uninstall",
    "~/Library/Preferences/com.cyxtera.appgate.sdp*",
    "~/Library/Saved Application State/com.cyxtera.appgate.sdp.savedState",
  ]
end
