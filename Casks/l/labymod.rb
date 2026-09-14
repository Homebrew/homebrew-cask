cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "3.0.15"
  sha256 arm:   "548f7111c189e5230a0795b9648ce0083fdb9b0ce3fec63679e9959ab8fe1c78",
         intel: "e54d91fb4274e005846fe70ed1ac1b087c01cb127eacb585e36520a90c1589bc"

  url "https://releases.r2.labymod.net/launcher/darwin/#{arch}/LabyMod%20Launcher-#{version}-#{arch}.dmg"
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

  zap trash: [
    "~/Library/Application Support/LabyMod Launcher",
    "~/Library/Application Support/LabyMod",
    "~/Library/Caches/net.labymod.launcher",
    "~/Library/Caches/net.labymod.launcher.ShipIt",
  ]
end
