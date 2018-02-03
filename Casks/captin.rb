cask 'captin' do
  version '1.0.11,82:1516943455'
  sha256 'c09431aef7ceb8b4c2eb0c758cd47af27673a29e302d5f143be583046b5ea938'

  # dl.devmate.com/com.100hps.captin was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.100hps.captin/#{version.after_comma.before_colon}/#{version.after_colon}/Captin-#{version.after_comma.before_colon}.dmg"
  appcast 'https://updates.devmate.com/com.100hps.captin.xml',
          checkpoint: '564e94f5e771ded9fb43db2380936cdc69d21d482cd0f8142c794ae550bdce3d'
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
