cask 'captin' do
  version '1.0.17,93:1539867062'
  sha256 'dd89ab1c7d6c640e6b4b6e1e8cd3db83ca4edf33574bab07ae79ae40c32733d6'

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
