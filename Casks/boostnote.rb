cask 'boostnote' do
  version '0.7.5'
  sha256 '920a38b31d9556cd32d09ed31535c5259046052defc17455a4e30da5616eef8e'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '2502fd1a400bd46c6e223a3e89b0f5ec658d177472365ff7b84c37af74fabac0'
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
