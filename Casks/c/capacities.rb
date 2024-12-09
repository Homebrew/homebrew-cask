cask "capacities" do
  arch arm: "-arm64"

  version "1.43.47"
  sha256 arm:   "d9e7bcadea8ec7ce1b1d8b50dd31c504361f18f323d8a3b5e48e1b397aa0dd70",
         intel: "b925e0f4deb6c2b0c3d979273900945209a60b7f69bd890afdbb9fcfdd2c88ef"

  url "https://capacities-frontend-app.s3.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.amazonaws.com/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.amazonaws.com/latest-mac.yml"
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
