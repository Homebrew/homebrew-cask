cask 'captin' do
  version '1.0.14,87:1532235836'
  sha256 '43466e6d5f7d37f63d6ff2547b3a19fc822ecb98953123032195d68a2661b093'

  # dl.devmate.com/com.100hps.captin was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.100hps.captin/#{version.after_comma.before_colon}/#{version.after_colon}/Captin-#{version.after_comma.before_colon}.dmg"
  appcast 'https://updates.devmate.com/com.100hps.captin.xml'
  name 'Captin'
  homepage 'http://captin.strikingly.com/'

  app 'Captin.app'

  uninstall login_item: 'Captin',
            quit:       'com.100hps.captin'

  zap trash: [
               '~/Library/Caches/com.100hps.captin',
               '~/Library/Preferences/com.100hps.captin.plist',
             ]
end
