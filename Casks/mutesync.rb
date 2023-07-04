cask "mutesync" do
  arch arm: "-arm64"

  version "5.5.3"
  sha256 arm:   "4a8400be871aca690ae67556f21472e0d83811ad661f189a4b1c89ea824f46c8",
         intel: "1ea532eb269785be71b89a91475da143673fd99a784a751fbacb846f1341d287"

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
