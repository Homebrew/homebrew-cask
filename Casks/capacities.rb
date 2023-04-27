cask "capacities" do
  arch arm: "-arm64"

  version "1.23.30"
  sha256 arm:   "5fd1420f999aaa884f870fd0b373e1299dfc87f7a64446cc317c1d09640d6195",
         intel: "c8a7adf3912d36f5231ab1296b98611d4b88cb1dcb55e643228a31216435cc31"

  url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.eu-central-1.amazonaws.com/"
  name "Capacities"
  desc "App to write and organize your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Logs/Capacities/",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
