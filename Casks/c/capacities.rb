cask "capacities" do
  arch arm: "-arm64"

  version "1.44.34"
  sha256 arm:   "58dbb411ddbf5a84c80266455608f41a01a9a6c530833b96ced86a6fbacc6918",
         intel: "b962fd97c97f9e82661e2089727beb20b7990ac4bf8c1a4fcb0dc19775ac0395"

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
