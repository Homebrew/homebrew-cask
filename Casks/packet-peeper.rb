cask 'packet-peeper' do
  version '2019-04-06'
  sha256 'd5268d36fdf6c97276eceadd3be3ef3b72618fce3996bab26cdacdfd9938dc63'

  # bitbucket.org/choll/packetpeeper was verified as official when first introduced to the cask
  url "https://bitbucket.org/choll/packetpeeper/downloads/PacketPeeper_#{version}.dmg"
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
