cask "capacities" do
  arch arm: "-arm64"

  version "1.71.32"
  sha256 arm:   "9516b8429e89b691a8b11f523d008d54abd8be0f2bd11fafd3bcdac49f0b57ac",
         intel: "1eb1de58e629eb7a28e346fe5360e1a91704c9530a91a140efe9d479739c849a"

  url "https://2vks4.upcloudobjects.com/capacities-desktop-app/Capacities-#{version}#{arch}.dmg"
  name "Capacities"
  desc "App to write and organise your ideas"
  homepage "https://capacities.io/"

  livecheck do
    url "https://2vks4.upcloudobjects.com/capacities-desktop-app/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Capacities.app"

  zap trash: [
    "~/Library/Application Support/Capacities",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.capacities.app.sfl*",
    "~/Library/Logs/Capacities",
    "~/Library/Preferences/io.capacities.app.plist",
    "~/Library/Saved Application State/io.capacities.app.savedState",
  ]
end
