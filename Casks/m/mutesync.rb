cask "mutesync" do
  arch arm: "-arm64"

  version "5.6.6"
  sha256 arm:   "ce75bbcba9c074434e6f08faf95a3c87510f27bd9369041cecf1703a703b7c16",
         intel: "c6f3b5105dee5cc905a81d9f519bbd75f95871268104216f61a9e319bd411cc4"

  url "https://mutesync.s3.amazonaws.com/mutesync-#{version}#{arch}.dmg",
      verified: "mutesync.s3.amazonaws.com/"
  name "mütesync"
  desc "Companion app to the mütesync physical button"
  homepage "https://mutesync.com/"

  livecheck do
    url "https://mutesync.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "mutesync.app"

  zap trash: [
    "~/Library/Application Support/mutesync/",
    "~/Library/Preferences/com.mutesync.electron.plist",
  ]
end
