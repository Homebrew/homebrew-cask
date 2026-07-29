cask "capacities" do
  arch arm: "-arm64"

  version "1.67.19"
  sha256 arm:   "6c6cae054e58d62c87a88e5a4d94e5425eaf2fb69f1d1b86ec43783bbd546e9c",
         intel: "91f0717b1d2e71f6a397a6687ae248717f22a15b5274b866ec680df2eba615ab"

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
