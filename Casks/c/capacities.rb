cask "capacities" do
  arch arm: "-arm64"

  version "1.48.7"
  sha256 arm:   "6f410cf168eff08465c21e3d35a2cbf720ac3f9a4b89bf75736af592accedb06",
         intel: "4b088526779d223c71db4641c2ad20313ed90160256b2a029cede44c3fd3c6bc"

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
