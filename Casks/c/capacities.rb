cask "capacities" do
  arch arm: "-arm64"

  version "1.65.13"
  sha256 arm:   "3d87b3cc90da81f69ba83b0f88c713986b70d9ad2934984bc65f74d41a45b04f",
         intel: "8888c0fca4286834fc82837d7e6e76c35058733ae851c9e434f1fdc3499c8735"

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
