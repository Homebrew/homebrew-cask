cask "capacities" do
  arch arm: "-arm64"

  version "1.58.42"
  sha256 arm:   "d9e1ed5318e269dc3fa232a91fdb53ced1328525a155166175753dfbd561304b",
         intel: "0a4d723e3e48870402f4446af2a7c116bd392cb147bc508fa2dd6cd3774c89b9"

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
