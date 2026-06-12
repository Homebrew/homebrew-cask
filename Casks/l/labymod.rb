cask "labymod" do
  arch arm: "arm64", intel: "x64"

  version "3.0.9"
  sha256 arm:   "a68ceb49123783723e835f84e529a855612a1fd522c8157fb9134c3d6f605b7a",
         intel: "40cea06f7a86b296e8e0d5a2b07ad45d6faad9306db0511785a7738c9178caf9"

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
