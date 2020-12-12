cask "packet-peeper" do
  version "2019-12-17"
  sha256 "75f081ab7e9a75f6d41172518864891d426bf05f10f91890c61c330c18de1729"

  # github.com/choll/packetpeeper/ was verified as official when first introduced to the cask
  url "https://github.com/choll/packetpeeper/releases/download/#{version}/PacketPeeper_#{version}.dmg"
  appcast "https://packetpeeper.org/release-notes/"
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
