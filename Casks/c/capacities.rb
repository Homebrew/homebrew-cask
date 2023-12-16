cask "capacities" do
  arch arm: "-arm64"

  version "1.30.7"
  sha256 arm:   "9ddea528cb616c0fbdf5a3805c6cdde47ad440f00aa14e4b89b4e90c5e9e6946",
         intel: "91b733c945ec896c20122be648ae03f4b982cb612ae4e6dbe01c7343aa43b0c6"

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
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Logs/Capacities/",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
