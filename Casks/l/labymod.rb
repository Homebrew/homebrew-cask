cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "2.1.15"
  sha256 arm:   "3a2c2e66e446b2dbe518b3b7bbe9b91981a5b17e148a1426e5af02093bb6e387",
         intel: "b6b88ffbd39cef0290dd50236e763233e3f75ca8d5c18f077cdf81a13db5df66"

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
