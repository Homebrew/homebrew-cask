cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "3.0.10"
  sha256 arm:   "92bc3b935f588fa86c4bbfe5311e98fb6a8f74383248d36bfee628ce871faf15",
         intel: "c28aa2bbf5fcaede21fa02d910273b3b806e96532e8469660663b33b5a33030d"

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
