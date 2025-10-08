cask "capacities" do
  arch arm: "-arm64"

  version "1.53.32"
  sha256 arm:   "b595eebb8b57d9cfe0f51d55217ee304319f2e0adf85b92fff68a51dfa25bad5",
         intel: "4fca6a343b1b10783668dffa2630cd33630325a32fda8e0a6c8667b86e700f09"

  url "https://capacities-desktop-app.fra1.cdn.digitaloceanspaces.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-desktop-app.fra1.cdn.digitaloceanspaces.com/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-desktop-app.fra1.cdn.digitaloceanspaces.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Logs/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
