cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "9c1997a54209f3b09f48f36b4eb74369b29c0006a8fcfd247d963b4cbd18f954",
         intel: "fc84368f54b9b6ac6d5cfa010ef13223e29419b5cb37de23c62d32a52e4703a0"

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

  depends_on macos: :catalina

  app "LabyMod Launcher.app"

  zap trash: [
    "~/Library/Application Support/LabyMod Launcher",
    "~/Library/Application Support/LabyMod",
    "~/Library/Caches/net.labymod.launcher",
    "~/Library/Caches/net.labymod.launcher.ShipIt",
  ]
end
