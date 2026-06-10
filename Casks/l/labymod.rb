cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "3.0.8"
  sha256 arm:   "55b1dec6ee99ba6eadd803e0fc30572485fc16a3d96ad269da986ca8ad8248f5",
         intel: "0448eb743773e35121c7adcafe28df3ea22a2d66897007077689ad829fa2b17d"

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

  app "Laby Launcher.app"

  zap trash: [
    "~/Library/Application Support/LabyMod Launcher",
    "~/Library/Application Support/LabyMod",
    "~/Library/Caches/net.labymod.launcher",
    "~/Library/Caches/net.labymod.launcher.ShipIt",
  ]
end
