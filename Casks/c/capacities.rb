cask "capacities" do
  arch arm: "-arm64"

  version "1.58.27"
  sha256 arm:   "f2bbf2aa98379bc2860dbebf67df4704a76128e2a1f6b612a43c080a969b2e31",
         intel: "a1b5048dfbaafabd810ca598dc21d7be09e6c681b9cb1d001ff6ae45d0ae4759"

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
