cask 'boostnote' do
  version '0.8.7'
  sha256 'c04a17c97426ccb4c780c45469f5f4e9f2a4d5af7afcbea099a89a1d1ef36f8b'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: 'a92d744121e88bb9f117fde6c4ab8dabf99ef1050283d4122d96493cd1014b12'
  name 'Boostnote'
  homepage 'https://boostnote.io/'

  depends_on macos: '>= :mavericks'

  app 'Boostnote.app'

  zap delete: [
                '~/Library/Preferences/com.maisin.boost.plist',
                '~/Library/Preferences/com.maisin.boost.helper.plist',
                '~/Library/Saved Application State/com.maisin.boost.savedState',
              ]
end
