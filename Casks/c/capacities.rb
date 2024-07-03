cask "capacities" do
  arch arm: "-arm64"

  version "1.38.11"
  sha256 arm:   "efee4151b38ba5b22a45a62e19a99a293bbee40a11ad1246c37d430042f9825b",
         intel: "93ce3b53ee0df600a8755a59aea369b7a368bdc09246d33d9fbdfda37bd6f27f"

  url "https://capacities-frontend-app.s3.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.amazonaws.com/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.amazonaws.com/latest-mac.yml"
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
