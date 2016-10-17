cask 'boostnote' do
  version '0.7.1'
  sha256 'f8fd7e2ec544a7fbc8bb627a7349555c00ee800f7ed7a522c1bacdf7af31962f'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '2aff9d48ba3431e3b0e22758a0720e873168709f7508bd4b9b7abb4f7bd62840'
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
