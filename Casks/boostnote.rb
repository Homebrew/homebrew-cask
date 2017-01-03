cask 'boostnote' do
  version '0.8.0'
  sha256 '8fffd2b3a2fb345da42a32d7ee265f576d205c2fb628f6f66466e727de9ecd44'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: 'ee236641bdd8e55671241a50cea398363f2f0c192fba4ad518b707b88a31c6af'
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
