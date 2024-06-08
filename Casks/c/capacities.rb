cask "capacities" do
  arch arm: "-arm64"

  version "1.37.17"
  sha256 arm:   "690258f814e4ff68c0cf7eeb4c57705c97c0b44a8bd05dc9530ee9cf8eb05435",
         intel: "67c855ea0519a1fb25ab5d1a3a343a8e1fa09328a24d4d504ca77d4b1578820d"

  url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.eu-central-1.amazonaws.com/"
  name "Capacities"
  desc "App to write and organise your ideas"
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
