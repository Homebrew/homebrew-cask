cask "capacities" do
  arch arm: "-arm64"

  version "1.24.1"
  sha256 arm:   "3d1e954c141a895515b7a5c4b978e9f7f9d7179f517be97011be3a7b8e091ef3",
         intel: "adc35b9fbb3255556059881dcc3ea55bff33dd00cda22c9e9bbf486f7485a8e4"

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
