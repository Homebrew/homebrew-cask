cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "3.1.20"
  sha256 arm:   "522e7a609070c277bd42343d64911ae930e983b1e7452bfbe4c8c493f5931e95",
         intel: "0979689d2e666fba02a133459a24d8b58138fdbc409ad3d95c1c76fb3c365e0b"

  url "https://releases.r2.labymod.net/launcher/darwin/#{arch}/LabyMod%20Launcher-darwin-#{arch}-#{version}.zip"
  name "LabyMod Launcher"
  desc "Launcher for LabyMod (Minecraft client)"
  homepage "https://labymod.net/"

  livecheck do
    url "https://releases-launcher.labymod.net/update/darwin_#{arch}/0.0.0/stable"
    strategy :json do |json|
      json["name"]
    end
  end

  depends_on :macos

  app "Laby Launcher.app"

  uninstall launchctl: "net.labymod.launcher.ShipIt",
            quit:      "net.labymod.launcher"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.labymod.launcher.sfl*",
    "~/Library/Application Support/LabyMod Launcher",
    "~/Library/Application Support/LabyMod",
    "~/Library/Caches/net.labymod.launcher",
    "~/Library/Caches/net.labymod.launcher.ShipIt",
    "~/Library/HTTPStorages/net.labymod.launcher",
    "~/Library/Preferences/net.labymod.launcher.plist",
  ]
end
