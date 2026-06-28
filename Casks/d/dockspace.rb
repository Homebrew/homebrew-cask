cask "dockspace" do
  version "0.6"
  sha256 "bcec2a773d1146ddc053a64b434c2e41f3b853f4929193f4c9a172b0c1c50c30"

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
