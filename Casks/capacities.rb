cask "capacities" do
  arch arm: "-arm64"

  version "1.23.50"
  sha256 arm:   "2686cb0ec03958e85701b417e260816a84a483c3d7d57017dc53fa5b83c3496b",
         intel: "faa8500d3dbdb3d1cfe914e0139616aa70e749ca11397a292d87b284c1e5e19e"

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
