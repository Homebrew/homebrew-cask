cask 'boostnote' do
  version '0.7.3'
  sha256 '11356e9c29b09da77b8f09aaea9f6ec1d2632033454eeeda3f29ab8c9b7d95a9'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '4ea0b820c61bf5134d5f6d36df313a8caedb09161db5e548c9c9cd61617fd62d'
  name 'Boostnote'
  homepage 'https://b00st.io/'

  depends_on macos: '>= :mavericks'

  app 'Boostnote.app'

  zap delete: [
                '~/Library/Preferences/com.maisin.boost.plist',
                '~/Library/Preferences/com.maisin.boost.helper.plist',
                '~/Library/Saved Application State/com.maisin.boost.savedState',
              ]
end
