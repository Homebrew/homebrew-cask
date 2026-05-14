cask "capacities" do
  arch arm: "-arm64"

  version "1.64.6"
  sha256 arm:   "3058d8c0a3ae4019bab724e112110eb59e627d7038442edfa30448a6b31d85a9",
         intel: "fd4e7a7bd1b7fed35e6591f08dad862af7d31d115d52df07316f57b534e4d2d1"

  url "https://2vks4.upcloudobjects.com/capacities-desktop-app/Capacities-#{version}#{arch}.dmg",
      verified: "2vks4.upcloudobjects.com/capacities-desktop-app/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://2vks4.upcloudobjects.com/capacities-desktop-app/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Logs/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
