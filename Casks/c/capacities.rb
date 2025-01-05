cask "capacities" do
  arch arm: "-arm64"

  version "1.44.16"
  sha256 arm:   "0d24cdaa0323ba682a2d30e2a4ea92c416c73b356b5af64dbbc70c9d0bd85a62",
         intel: "d5fba7edeccec6e51be1aae9b2b67384ae70afd5219a6b1bfacd1eba80b40296"

  url "https://capacities-frontend-app.s3.amazonaws.com/Capacities-#{version}#{arch}.dmg",
      verified: "capacities-frontend-app.s3.amazonaws.com/"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://capacities-frontend-app.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Logs/Capacities/",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
