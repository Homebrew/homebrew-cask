cask 'boostnote' do
  version '0.6.6'
  sha256 '7ff054dce1f7b405e0dc19f1dbdfb31f0bd8b3451a53b9e392fec4dc00f1ac0b'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '3626a918a21fb04a9c88b68f80f851fbdcefd7e0b1573194dd72da65bf5b8f75'
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
