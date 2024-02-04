cask "capacities" do
  arch arm: "-arm64"

  version "1.33.2"
  sha256 arm:   "7369ea5cd4b6aa6102c3691ebbc6ddcc11493bc855ec1c0910e4368994f8eeaa",
         intel: "6d50f868169eccb8588ece5b46d06637276dc1ba06c5811048d6a79ece11b211"

  url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.eu-central-1.amazonaws.com/"
  name "Capacities"
  desc "App to write and organize your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Logs/Capacities/",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
