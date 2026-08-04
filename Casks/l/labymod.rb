cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "3.0.12"
  sha256 arm:   "e291c9db10c6037a71c741a2ea31e6d090f7fbb103a060587d6e77c2a63e65bd",
         intel: "310bcfccb8572f886b4f30adafaa470223ff0ae4732711200850012dd88e6dac"

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
