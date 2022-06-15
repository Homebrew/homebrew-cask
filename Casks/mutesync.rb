cask "mutesync" do
  version "5.3.4"
  sha256 "19eeaf54df6ab837e8ef872f1f54b6dc904fa0730037fd76ec3198ab6b9d47e8"

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
