cask "packet-peeper" do
  version "2021-07-18"
  sha256 "c08d8d53969962fb8530301d81180faf11a5cd679f1b91539f5cbe1674cc39b9"

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
