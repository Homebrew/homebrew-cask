cask "capacities" do
  arch arm: "-arm64"

  version "1.44.21"
  sha256 arm:   "a3b1b9dc95f314a511746acf087527db21b6ee653d6eaea1b4e2d8bbedb52d90",
         intel: "afb4e9d5bd2693a5158d5df8c18c9c862eb2ca0d552c5e775e124d085a24b423"

  url "https://capacities-frontend-app.s3.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.amazonaws.com/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Logs/Capacities/",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
