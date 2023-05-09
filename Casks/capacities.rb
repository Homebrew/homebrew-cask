cask "capacities" do
  arch arm: "-arm64"

  version "1.23.55"
  sha256 arm:   "48789f4394922a61e4fbec54ef386d110e9c41d103dc376b7af26840ed1bacb4",
         intel: "7aee7ba96651f5e8b5579879657b8872ea4b16bf5ab94e7acc33b3cb89b77a36"

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
