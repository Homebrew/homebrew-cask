cask "grid" do
  version "1.2"
  sha256 "6145076e4d08a6204f874bb6a4de5319429645c09b3b91b809da3ad238ec2805"

  url "https://macgrid.app/download/Grid-#{version}.dmg"
  appcast "https://macgrid.app/appcast.xml"
  name "Grid"
  desc "Window manager"
  homepage "https://macgrid.app/"

  app "Grid.app"

  uninstall quit:      [
    "app.macgrid.Grid",
    "app.macgrid.GridLaunchAtLogin",
  ],
            launchctl: "app.macgrid.GridLaunchAtLogin"

  zap trash: [
    "~/Library/Application Support/Grid",
    "~/Library/Caches/app.macgrid.Grid",
    "~/Library/Containers/app.macgrid.GridLaunchAtLogin",
    "~/Library/Preferences/app.macgrid.Grid.plist",
  ]
end
