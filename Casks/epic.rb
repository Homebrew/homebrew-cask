cask 'epic' do
  version '2462'
  sha256 'fc8fadf78816eaad050d514b3fc9a5c524b7fe5bf5a4b779e7b373ba2c240d1f'

  # macepic-cbe.kxcdn.com was verified as official when first introduced to the cask
  url "https://macepic-cbe.kxcdn.com/#{version}/sign/Epic.dmg"
  appcast 'https://updates.epicbrowser.com/mac_updates/appcast.xml',
          checkpoint: 'aac3853720066e62a3398b67df8e2250a9d0163459f1513918899bad06b566d4'
  name 'Epic Privacy Browser'
  homepage 'https://www.epicbrowser.com/'
  license :gratis

  app 'Epic.app'
end
