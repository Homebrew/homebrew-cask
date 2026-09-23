cask "capacities" do
  arch arm: "-arm64"

  version "1.71.12"
  sha256 arm:   "8ba73f630a04f47aa63b5e07b6dd640cac6b9cf12e01e6b65d69b86fc7b76406",
         intel: "98a82d466aa6cde5525390b8f1cc1310ed23d02130a1a1880c5e2616f57c68dd"

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
