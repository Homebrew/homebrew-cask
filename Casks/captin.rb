cask 'captin' do
  version '1.0.12,84:1520071833'
  sha256 '6a84831ddd97e5a98215d9cd8b866a7093c4a55a97ee9b31d84e01f9ed231218'

  # dl.devmate.com/com.100hps.captin was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.100hps.captin/#{version.after_comma.before_colon}/#{version.after_colon}/Captin-#{version.after_comma.before_colon}.dmg"
  appcast 'https://updates.devmate.com/com.100hps.captin.xml',
          checkpoint: '384a968ec3382d40df7c92dbc64e2dbf21dd4c53099c18d5ef4df118ed3c6d20'
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
