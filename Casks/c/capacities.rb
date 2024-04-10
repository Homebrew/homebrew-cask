cask "capacities" do
  arch arm: "-arm64"

  version "1.36.1"
  sha256 arm:   "1517bb3d76106ee9e2d52d74f63a250dedb5d7c4f84eb033eafcdfc556df03d3",
         intel: "8987dc39d35f70efd106aa2f7bc1818f93a1b697bd8b460fd494438dab0aa6a0"

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
