cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "3.0.0"
  sha256 arm:   "72117534c5bbe96e09d8663268b6743ef967affffa549c5438e8c659c4e4da3e",
         intel: "3f13498080dc853fc8069a82a6dc9228cba778b8092869baa5491720f16c6b1e"

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
