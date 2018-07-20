cask 'captin' do
  version '1.0.13,86:1532095863'
  sha256 '0d502c2bbc46dc0f3a5e45e25f68acbb303bd55139fdfed06e404212c5dd5a76'

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
