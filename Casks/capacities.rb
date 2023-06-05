cask "capacities" do
  arch arm: "-arm64"

  version "1.25.1"
  sha256 arm:   "da57dac5cb76cadff3926e258f9738dea391056487ce21f5d2eb42ff81f8241a",
         intel: "e1757e87cbefed6fe3ad9728e19af58fe44d86ac343efd7117e4123b19fbd0f6"

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
