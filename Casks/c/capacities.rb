cask "capacities" do
  arch arm: "-arm64"

  version "1.43.34"
  sha256 arm:   "0fab5ab9d242ab1e02f2ded2207b794b00cea70a9cbab700829104ccbe534983",
         intel: "78112764f0c9841ef90b739773acc825cc81570d2990c8e316dcf757e2170dfd"

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
