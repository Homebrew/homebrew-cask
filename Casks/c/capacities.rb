cask "capacities" do
  arch arm: "-arm64"

  version "1.32.2"
  sha256 arm:   "a476a5e1de821265ac21f54f9cb4ae1ba1c796a54a5ac0c2655ae396aa3a2e7f",
         intel: "9deff45e1a572eb0222d2e0aeead9dec394881a9dd11707efbedd0a576de902a"

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
    "~/Library/Logs/Capacities/",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
