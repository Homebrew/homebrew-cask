cask 'packet-peeper' do
  version '2019-11-21'
  sha256 '72a824aa411336c99a1a4c542aef0bbe265f11215132d97cfdcc3051cc11c126'

  # github.com/choll/packetpeeper was verified as official when first introduced to the cask
  url "https://github.com/choll/packetpeeper/releases/download/#{version}/PacketPeeper_#{version}.dmg"
  appcast 'https://packetpeeper.org/release-notes/'
  name 'Packet Peeper'
  homepage 'https://packetpeeper.org/'

  app 'Packet Peeper.app'

  zap trash: [
               '~/Library/Preferences/org.PacketPeeper.plist',
               '~/Library/Saved Application State/org.PacketPeeper.savedState',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.packetpeeper.sfl*',
             ]
end
