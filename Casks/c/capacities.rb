cask "capacities" do
  arch arm: "-arm64"

  version "1.44.12"
  sha256 arm:   "8f6d168b08c7f6b84ca568fc35fd28e442c2e5d657e200be82056db027084a3a",
         intel: "9046ff27b4220e452e390c5687b8c5e8da1ca95854f08753c1d815bf78186aa5"

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
