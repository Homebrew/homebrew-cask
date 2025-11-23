cask "grid" do
  version "1.4"
  sha256 "46f415795003460d5da018aaaeb72317d3c6b654ebdde33c1556e6e8659f0cdc"

  url "https://macgrid.app/download/Grid-#{version}.dmg"
  name "Grid"
  desc "Window manager"
  homepage "https://macgrid.app/"

  livecheck do
    url "https://macgrid.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Grid.app"

  uninstall launchctl: "app.macgrid.GridLaunchAtLogin",
            quit:      [
              "app.macgrid.Grid",
              "app.macgrid.GridLaunchAtLogin",
            ]

  zap trash: [
    "~/Library/Application Support/Grid",
    "~/Library/Caches/app.macgrid.Grid",
    "~/Library/Containers/app.macgrid.GridLaunchAtLogin",
    "~/Library/Preferences/app.macgrid.Grid.plist",
  ]
end
