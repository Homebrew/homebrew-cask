cask "capacities" do
  arch arm: "-arm64"

  version "1.44.13"
  sha256 arm:   "a763acf7a3372147e3d6df7f666dc56ecf959eda4e977c5d0874feac3d3f934f",
         intel: "537ecb20e378d656109c7e53784e2e9e4ed674567fce359486c8c675d85c1bc2"

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
