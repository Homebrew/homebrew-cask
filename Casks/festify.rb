cask 'festify' do
  version '0.2.6'
  sha256 '3d6c789f92988d197b8d4bba0782adb83e6a81b9a38f73c9e5233f3ff3390804'

  url "https://github.com/festify/app/releases/download/v#{version}/Festify-#{version}.dmg"
  appcast 'https://github.com/Festify/app/releases.atom',
          checkpoint: '03af11f99136809bbc144b48fb06ff51cb404e58af6a3bbe3487c7c932530056'
  name 'Festify'
  homepage 'https://github.com/festify/app'

  app 'Festify.app'

  zap delete: '~/Library/Saved Application State/rocks.festify.app.savedState',
      trash:  [
                '~/Library/Application Support/Festify',
                '~/Library/Preferences/rocks.festify.app.helper.plist',
                '~/Library/Preferences/rocks.festify.app.plist',
              ]
end
