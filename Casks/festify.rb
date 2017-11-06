cask 'festify' do
  version '0.2.10'
  sha256 '884b9f0f5e6413fdcec547f0c414c8ed7ab3992bf348218cd0e298557522ee3d'

  url "https://github.com/festify/app/releases/download/v#{version}/Festify-#{version}.dmg"
  appcast 'https://github.com/Festify/app/releases.atom',
          checkpoint: '02408830be2ec73a2b0d8c09af58fad2b55b0da7f9ce72b0df27581c95375403'
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
