cask "capacities" do
  arch arm: "-arm64"

  version "1.23.51"
  sha256 arm:   "a57602708c5b472c9645abd957acd7da4d3e3cf141d78fd1b90f96a5e28f35d8",
         intel: "7d7e6ca9ef66a46da8946682a5a7580bcc7ba0b4a09acf036227b30be68e56ce"

  url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.eu-central-1.amazonaws.com/"
  name "Capacities"
  desc "App to write and organize your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Logs/Capacities/",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
