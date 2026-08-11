cask "proxmoxbar" do
  version "3.0.2"
  sha256 "5ed41996a6bc6242389d6b3b10770faa489077510f98cec618c126f893968716"

  url "https://github.com/ryzenixx/proxmoxbar-macos/releases/download/v#{version}/ProxmoxBar.dmg",
      verified: "github.com/ryzenixx/proxmoxbar-macos/"
  name "ProxmoxBar"
  desc "Menu bar app for monitoring and controlling Proxmox VE"
  homepage "https://github.com/ryzenixx/proxmoxbar-macos"

  livecheck do
    url "https://raw.githubusercontent.com/ryzenixx/proxmoxbar-macos/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "ProxmoxBar.app"

  zap trash: [
    "~/Library/Application Scripts/DL58RM98AN.group.com.proxmoxbar.app",
    "~/Library/Application Scripts/com.proxmoxbar.app",
    "~/Library/Application Support/com.proxmoxbar.app",
    "~/Library/Caches/com.proxmoxbar.app",
    "~/Library/Caches/com.proxmoxbar.app.sparkle",
    "~/Library/Group Containers/DL58RM98AN.group.com.proxmoxbar.app",
    "~/Library/HTTPStorages/com.proxmoxbar.app",
    "~/Library/Preferences/com.proxmoxbar.app.plist",
    "~/Library/WebKit/com.proxmoxbar.app",
  ]
end
