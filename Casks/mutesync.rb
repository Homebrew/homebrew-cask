cask "mutesync" do
  arch arm: "-arm64"

  version "5.5.0"
  sha256 arm:   "5cf35844ad24334917db3b684f7c0dce6342981a5efc68d5531eb185dcaae6db",
         intel: "bc273b836c0ee5cc92f1a6d9e61f979e64f29697528e8596149f01081e4a5590"

  url "https://mutesync.s3.us-west-2.amazonaws.com/mutesync-#{version}#{arch}.dmg",
      verified: "mutesync.s3.us-west-2.amazonaws.com/"
  name "mütesync"
  desc "Companion app to the mütesync physical button"
  homepage "https://mutesync.com/"

  livecheck do
    url "https://mutesync.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  app "mutesync.app"

  zap trash: [
    "~/Library/Application Support/mutesync/",
    "~/Library/Preferences/com.mutesync.electron.plist",
  ]
end
