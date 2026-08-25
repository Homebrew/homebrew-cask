cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "3.0.14"
  sha256 arm:   "49dff8c561c3c271213c3c05ae64a7524e0e91018f4d39db85fe01430327a000",
         intel: "d2d10f58f8b99375ee0bc96d0dd977d7de457c6edb13a261d36a13e25a8f7017"

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
