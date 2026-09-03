cask "capacities" do
  arch arm: "-arm64"

  version "1.70.1"
  sha256 arm:   "fb247436253b3a014179fee68a46bc7f7e0204666078b953131d2ad37a40471e",
         intel: "27f6cb6944f2bcd87bf92861c70c50fd2eb1309da783cd47100a8b591ffc763b"

  url "https://2vks4.upcloudobjects.com/capacities-desktop-app/Capacities-#{version}#{arch}.dmg"
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
