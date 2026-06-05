cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "3.0.2"
  sha256 arm:   "f4ada913ab753c950f800868927229579ebc380ca1cec957c1df45f2325631e3",
         intel: "9648302625772ff39a511b95b6200220661f211a1e11f1dbb401a840816b180d"

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
