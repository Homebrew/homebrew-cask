cask 'guild-wars2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/gw2cdn was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/gw2cdn/client/branches/Gw2Setup-64.dmg'
  name 'Guild Wars 2'
  homepage 'https://www.guildwars2.com/'

  app 'Guild Wars 2 64-bit.app'

  zap trash: [
               '~/Library/Application Support/Guild Wars 2',
               '~/Library/Preferences/net.arena.Guild-Wars-2.plist',
               '~/Library/Saved Application State/net.arena.Guild-Wars-2.savedState',
             ]
end
