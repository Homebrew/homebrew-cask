cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "2.2.0"
  sha256 arm:   "46007c1321f259bd10a1cdc56251d2f2fae3451453562464c8ee625a0e5e0f97",
         intel: "7eae4f1c1eeda91c547d072dfb18bc063605b40b0adc08483fa57a9de6444939"

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
