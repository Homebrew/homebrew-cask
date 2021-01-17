cask "grid" do
  version "1.3"
  sha256 "8978205dd741130832361cae4a732a42e5de7f76a468c0cb97d8ef4fc32386da"

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
