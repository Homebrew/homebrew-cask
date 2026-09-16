cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "3.0.16"
  sha256 arm:   "e51e39e85ac1cc3b545c2fde0483d845cfb5a6e337cfe28fe800843a9faa4f66",
         intel: "cc2688bf9a82b238060c11c115fb7a4b02e92aed275770a2537026c3e490bd90"

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

  depends_on :macos

  app "Laby Launcher.app"

  zap trash: [
    "~/Library/Application Support/LabyMod Launcher",
    "~/Library/Application Support/LabyMod",
    "~/Library/Caches/net.labymod.launcher",
    "~/Library/Caches/net.labymod.launcher.ShipIt",
  ]
end
