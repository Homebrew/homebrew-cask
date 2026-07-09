cask "confirmo" do
  arch arm: "arm64", intel: "x64"

  version "1.0.96"
  sha256 arm:   "03239cd21238de2ac706752103d2f776eecaecfa374b4dc4f90746f3e9d1a59f",
         intel: "c8e22a5066d6052cd98ba7276ce1dccd9ef955711a644024606d83b13408f1da"

  url "https://updates.confirmo.love/confirmo-#{version}-#{arch}.dmg"
  name "Confirmo"
  desc "AI coding companion"
  homepage "https://confirmo.love/"

  livecheck do
    url "https://updates.confirmo.love/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Confirmo.app"

  uninstall quit: "com.confirmo.app"

  zap trash: [
    "~/Library/Application Support/Confirmo",
    "~/Library/Caches/com.confirmo.app",
    "~/Library/Caches/com.confirmo.app.ShipIt",
    "~/Library/HTTPStorages/com.confirmo.app",
    "~/Library/Preferences/com.confirmo.app.plist",
    "~/Library/Saved Application State/com.confirmo.app.savedState",
  ]
end
