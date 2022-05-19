cask "mutesync" do
  version "5.2.0"
  sha256 "48440030be493f5ee16ce6a50914992595ac951d4a3f6c2c967cce144f2037b1"

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
