cask "dockspace" do
  version "0.8"
  sha256 "52195593aa25758508f9bd792e05b943d55dc74cee45d059f7282ef8937aa949"

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
