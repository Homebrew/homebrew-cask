cask "capacities" do
  arch arm: "-arm64"

  version "1.39.10"
  sha256 arm:   "dc9b64aab169752dcb8b71c5917fc48e053bc93013eb8cba923533afc6ce21ce",
         intel: "13df39b677627e582ec02bd5e14f12907b9b237a17a8558e75510f4bb4648a10"

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
