cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "2.1.13"
  sha256 arm:   "aec023372f0646b111acd131f870be145f12c52c8fb2e5f21af95a05e73102d2",
         intel: "602f11529ed823a98d583b22b1c1bf1b73e0a11712982e8ee5ced9a85caf35c0"

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

  depends_on macos: ">= :catalina"

  app "LabyMod Launcher.app"

  zap trash: [
    "~/Library/Application Support/LabyMod Launcher",
    "~/Library/Application Support/LabyMod",
    "~/Library/Caches/net.labymod.launcher",
    "~/Library/Caches/net.labymod.launcher.ShipIt",
  ]
end
