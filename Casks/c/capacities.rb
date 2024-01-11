cask "capacities" do
  arch arm: "-arm64"

  version "1.31.1"
  sha256 arm:   "3fcabf9be9838e300826bf51c10a662231be08d558b1cfbea1f72a44d2c5b65e",
         intel: "e9bbeb7b9a59e5957bcaa89f8d75caf417a473bae38e18cb3ef3a83b5fff8f38"

  url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.eu-central-1.amazonaws.com/"
  name "Capacities"
  desc "App to write and organize your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :catalina"

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Logs/Capacities/",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
