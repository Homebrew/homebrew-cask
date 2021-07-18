cask "mutesync" do
  version "4.7.0"
  sha256 "5614dab7186501ce8d376d92892a341ef3e31e7ffca7a107b38cfa5f2eb8ba06"

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
