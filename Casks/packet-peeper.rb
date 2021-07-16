cask "packet-peeper" do
  version "2021-07-15"
  sha256 "8714030fec22bc39c771dd4018b6be7124375596a076ed50fe87b217b7458c05"

  url "https://github.com/choll/packetpeeper/releases/download/#{version}/PacketPeeper_#{version}.dmg",
      verified: "github.com/choll/packetpeeper/"
  name "Packet Peeper"
  desc "Network protocol analyzer"
  homepage "https://packetpeeper.org/"

  app "Packet Peeper.app"

  zap trash: [
    "~/Library/Preferences/org.PacketPeeper.plist",
    "~/Library/Saved Application State/org.PacketPeeper.savedState",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.packetpeeper.sfl*",
  ]
end
