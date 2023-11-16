cask "capacities" do
  arch arm: "-arm64"

  version "1.30.2"
  sha256 arm:   "8795a3488f6b4ee0422f70e6ba5068d9dafe4e995d06b950bf79939e8016f959",
         intel: "170fe62d7db2e0b33fd89ebb150786a32bf4b9cc53dcc00fca5789c67d329d32"

  url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.eu-central-1.amazonaws.com/"
  name "Capacities"
  desc "App to write and organize your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.eu-central-1.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Logs/Capacities/",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
