cask "dockspace" do
  version "0.9"
  sha256 "3bfe9ac33d22da5ca365435d12ee432fd96aa0aca618fb1c03211d3cab3d6e02"

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
