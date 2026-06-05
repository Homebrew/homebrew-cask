cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "3.0.4"
  sha256 arm:   "cee1d8a1e31956e63dcf540091c45b3915782b9bfd705663d877ffe3e6ca0c01",
         intel: "4ff8650858dc3c0a1e9305bca4f44a283e9d734617f6a1d2e7434426ecf2f587"

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
