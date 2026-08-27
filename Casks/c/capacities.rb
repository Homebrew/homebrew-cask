cask "capacities" do
  arch arm: "-arm64"

  version "1.69.7"
  sha256 arm:   "c4927c3a751e05a5456c2f00b140f49c8af31ad89c7f6c1fca528f77ae01c423",
         intel: "5e7e209ab9e8f2965df255f2ced0b316838e16d2af287efb153dcc39b74bece6"

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
