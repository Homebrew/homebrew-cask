cask "mutesync" do
  version "5.4.1"
  sha256 "d9f4e90b9a9de3f779f1a3fbffc6d62b3c63e1d69f1be8a232cba19a5fffd633"

  url "https://mutesync.s3-us-west-2.amazonaws.com/mutesync-#{version}.dmg",
      verified: "mutesync.s3-us-west-2.amazonaws.com/"
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
