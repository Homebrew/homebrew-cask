cask "capacities" do
  arch arm: "-arm64"

  version "1.43.3"
  sha256 arm:   "2d60a0e09c346e25028b08e843bd33365030b9208056cb7657106def02d19615",
         intel: "71bd35fd3ef5e57c92c5bb71297d97d3e23aaeb98a621f286f5e9f6996d618e5"

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
