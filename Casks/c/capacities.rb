cask "capacities" do
  arch arm: "-arm64"

  version "1.44.18"
  sha256 arm:   "4adc36a1980fa5686f7056c5a3e2f89a311e94c9b40de9e2091ac5af18264e78",
         intel: "4e3ec5f07f64453fb0be4ea62f14a13b9c4733f82ae75ab53e8b837148589181"

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
