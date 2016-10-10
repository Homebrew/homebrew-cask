cask 'boostnote' do
  version '0.6.8'
  sha256 '324aa0ab5569ddfe18c716c2dd69a4068de8ee0adf6160b1a0cf3330a1d1c993'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: 'a914090f67b50051a38b48d7b10db142b821efa94286486596a09fc66489abb4'
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
