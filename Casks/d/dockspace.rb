cask "dockspace" do
  version "0.7"
  sha256 "2b71c648ae05b7b537d4c59775a1464831b353c8377201e6b9e0e798cf235774"

  url "https://s4.getdockspace.app/releases/Dockspace-#{version}.zip"
  name "Dockspace"
  desc "Widgets for your dock"
  homepage "https://getdockspace.app/"

  livecheck do
    url "https://s4.getdockspace.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Dockspace.app"

  uninstall quit: "getdockspace.app"

  zap trash: [
    "~/Library/Application Support/Dockspace",
    "~/Library/Caches/Dockspace",
    "~/Library/Caches/getdockspace.app",
    "~/Library/HTTPStorages/getdockspace.app",
    "~/Library/Preferences/getdockspace.app.plist",
  ]
end
