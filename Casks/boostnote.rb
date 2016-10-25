cask 'boostnote' do
  version '0.7.2'
  sha256 '33cca3abefbbb38d9ae3a72411092a890535c634c0e8430d558edc621617ff57'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '07df80006c9cfcf019787ce4629a4e0ac522c56845c5c4338a2a1958aa5de4f7'
  name 'Boostnote'
  homepage 'https://b00st.io'

  depends_on macos: '>= :mavericks'

  app 'Boostnote.app'

  zap delete: [
                '~/Library/Preferences/com.maisin.boost.plist',
                '~/Library/Preferences/com.maisin.boost.helper.plist',
                '~/Library/Saved Application State/com.maisin.boost.savedState',
              ]
end
