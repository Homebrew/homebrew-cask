cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "3.0.13"
  sha256 arm:   "264c6d77118a08af40b2435f29be96a1b25dc2b0e6ab8312bc9f3ed4463915fc",
         intel: "11e3daabfd8cbca5a787cc66a9fe103fc407032cb966f87e7d98ba75faa7d26a"

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
