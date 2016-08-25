cask 'boostnote' do
  version '0.6.4'
  sha256 '66a7c609e086135006527e2e9bb163e60e26dd2ab945e8263ba9ba8be0dc0362'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '7d8a2cd522fa627def4e92b93f9c11dc1b7a58083d6d405c0b12539718ba3897'
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
