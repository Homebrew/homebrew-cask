cask "capacities" do
  arch arm: "-arm64"

  version "1.34.17"
  sha256 arm:   "25c8557fe0264797bf59ff3dc01a5a9668bedfdc4a1effb5f83ce162c1e5b7d6",
         intel: "a89e56e6fa61a5770f6c2b12ee75ea987c44c911f3f2e05a1641c4beff5710cd"

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
