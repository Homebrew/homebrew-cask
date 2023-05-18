cask "capacities" do
  arch arm: "-arm64"

  version "1.24.0"
  sha256 arm:   "dde7c56733f56b270e11091259d08ba3c7f99b4d034668eccbb0c270ba653a93",
         intel: "09b0cb6ba7029b042c3da49e6c01ba385f4ab9537f15bc2047d8c446f3a182c4"

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
