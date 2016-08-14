cask 'boostnote' do
  version '0.6.3'
  sha256 '3d4c30dd556d89566e660577519038efa4d9db67884531a09187c595214a5864'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: 'd315659adf44b92b9565ace9a60f9750c0e769b2ef019bcab326b717d6029d14'
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
