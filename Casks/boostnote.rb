cask 'boostnote' do
  version '0.6.2'
  sha256 '726304f6ab66bb9d9b6b8b3f83b349c6a795608a123805800775f025ce96114d'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '2a15c71dff8e004261c7ab4459cd559db74bdbdf79d2ef3bdc913e116ea305ef'
  name 'Boostnote'
  homepage 'https://b00st.io'
  license :gpl

  depends_on macos: '>= :mavericks'

  app 'Boostnote.app'

  zap delete: [
                '~/Library/Preferences/com.maisin.boost.plist',
                '~/Library/Preferences/com.maisin.boost.helper.plist',
                '~/Library/Saved Application State/com.maisin.boost.savedState',
              ]
end
