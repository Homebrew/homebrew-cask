cask 'captin' do
  version '1.0.24,118:1585049885'
  sha256 'cb1290938ec121849511a2a497c91963f092ee2b928195e8b882ae00ee988d1d'

  # dl.devmate.com/com.100hps.captin was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.100hps.captin/#{version.after_comma.before_colon}/#{version.after_colon}/Captin-#{version.after_comma.before_colon}.dmg"
  appcast 'https://updates.devmate.com/com.100hps.captin.xml'
  name 'Captin'
  homepage 'http://captin.strikingly.com/'

  app 'Captin.app'

  uninstall quit: 'com.100hps.captin'

  zap trash: [
               '~/Library/Caches/com.100hps.captin',
               '~/Library/Preferences/com.100hps.captin.plist',
             ]
end
