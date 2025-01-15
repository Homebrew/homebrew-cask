cask "capacities" do
  arch arm: "-arm64"

  version "1.44.30"
  sha256 arm:   "bf09ebc3906b4f54635e630f49d1c847f91cddae3f4da3630e0b51fd906f691b",
         intel: "669eb6ed50efc29e2d14b51af280e8ab0fd0098e3e68c8ddfbb972160fa43354"

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
