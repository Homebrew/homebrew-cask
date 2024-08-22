cask "capacities" do
  arch arm: "-arm64"

  version "1.41.6"
  sha256 arm:   "f63e12ab9e39a95f9a2aec12daafa71c0268d4f594492bd64d014499307f522f",
         intel: "1d02a197361756abf93a8f5ac52a7727ca1eefc408af3ef7f09124d4e12ec1c7"

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
