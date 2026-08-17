cask "capacities" do
  arch arm: "-arm64"

  version "1.68.2"
  sha256 arm:   "158c05063a4c56de8de18aac47b137749fa2ba997ed7a15af976b5196e99219f",
         intel: "52ae316c0ae8c41b6e8f89d8a06586c8319e7a04739904c50de2fdc9753787a9"

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
