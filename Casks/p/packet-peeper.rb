cask "packet-peeper" do
  version "2022-08-31"
  sha256 "d930f595ccd391df292c09ae82e3404bf00ed59d8b8f66b462671ee9e1c7c4a2"

  url "https://github.com/choll/packetpeeper/releases/download/#{version}/PacketPeeper_#{version}.dmg"
  name "Packet Peeper"
  desc "Network protocol analyzer"
  homepage "https://github.com/choll/packetpeeper"

  app "Packet Peeper.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.packetpeeper.sfl*",
    "~/Library/Preferences/org.PacketPeeper.plist",
    "~/Library/Saved Application State/org.PacketPeeper.savedState",
  ]
end
