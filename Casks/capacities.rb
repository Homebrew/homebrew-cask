cask "capacities" do
  arch arm: "-arm64"

  version "1.25.21"
  sha256 arm:   "54abc319fef3d2e8cb52d4cac11557e9089bfed51a2eddc4e902563af940a12a",
         intel: "044f6e11d0b01e72380ec0041d9a1d6c8437817ecbdad949c12e0431371e919d"

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
