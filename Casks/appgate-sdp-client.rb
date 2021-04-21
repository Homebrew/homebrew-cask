cask "appgate-sdp-client" do
  version "5.3.3"
  sha256 "935c87fcec29c6c7ab28ced0b3da8bb98db7f6b51303c3d651c53b14fc17fcbd"

  url "https://bin.appgate-sdp.com/#{version.major_minor}/client/AppGate-SDP-#{version}-Installer.dmg",
      verified: "bin.appgate-sdp.com/"
  appcast "https://www.appgate.com/support/software-defined-perimeter-support/sdp-v#{version.major}-#{version.minor}"
  name "AppGate SDP Client for macOS"
  desc "Software-defined perimeter for secure network access"
  homepage "https://www.appgate.com/software-defined-perimeter/support"

  depends_on macos: ">= :el_capitan"

  pkg "AppGate SDP Installer.pkg"

  uninstall launchctl: [
    "com.cyxtera.appgate.sdp.client.agent",
    "com.cyxtera.appgate.sdp.helper",
    "com.cyxtera.appgate.sdp.tun",
    "com.cyxtera.appgate.sdp.updater",
  ],
            quit:      [
              "com.cyxtera.appgate.helper",
              "com.cyxtera.appgate.sdp",
            ],
            signal:    [
              ["QUIT", "com.cyxtera.appgate"],
            ],
            pkgutil:   "com.appgate.pkg.appgatetun.component"

  zap trash: [
    "~/Library/Application Support/appgate-ui",
    "~/Library/Caches/com.cyxtera.appgate.sdp.uninstall",
    "~/Library/Preferences/com.cyxtera.appgate.sdp*",
    "~/Library/Saved Application State/com.cyxtera.appgate.sdp.savedState",
  ]
end
