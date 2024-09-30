cask "capacities" do
  arch arm: "-arm64"

  version "1.42.4"
  sha256 arm:   "0d1fcbd88aef80e68d1118ea4aeb708b17dc3065896228f49a5a727b5931c19d",
         intel: "2ef88a8d94e1a79403b5fc2beb240f13b0829fcf7e210ed1b09ad8ab0bdb7b58"

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
