cask "capacities" do
  arch arm: "-arm64"

  version "1.37.2"
  sha256 arm:   "e41fd914404a191cb2a8e4bb9fbbb9469b4453095f3fdda212ea7238abc5a789",
         intel: "9b76799b88bf03e54bc06fef9dbad9901d898c222144cbdf8d3178321158e918"

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
