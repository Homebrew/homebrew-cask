cask "all-in-one-messenger" do
  version "2.5.0"
  sha256 "e027442646255f02e848dc9ae78a57ccda00c860af5ccd7619996f15163611f2"

  # all-in-one-messenger.ams3.digitaloceanspaces.com/ was verified as official when first introduced to the cask
  url "https://all-in-one-messenger.ams3.digitaloceanspaces.com/All-in-One%20Messenger-#{version}.dmg"
  appcast "https://all-in-one-messenger.ams3.digitaloceanspaces.com/latest-mac.yml"
  name "All-in-One Messenger"
  desc "Combined interface for various messaging platforms"
  homepage "https://allinone.im/"

  auto_updates true

  app "All-in-One Messenger.app"

  zap trash: [
    "~/Library/Application Scripts/im.allinone.messenger",
    "~/Library/Application Support/All-in-One Messenger",
    "~/Library/Containers/im.allinone.messenger",
    "~/Library/Preferences/im.allinone.messenger.plist",
    "~/Library/Saved Application State/im.allinone.messenger.savedState",
    "/var/db/receipts/im.allinone.messenger.bom",
    "/var/db/receipts/im.allinone.messenger.plist",
  ]
end
