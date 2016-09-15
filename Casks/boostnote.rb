cask 'boostnote' do
  version '0.6.5'
  sha256 '26b6f451a4dc8bf65c1c9e8be624171ae697d406c53d9fa6088feba6e49619fe'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '16465030c9c38391104eeca26b49bbaa0f02b8366d8fa15184571dfd4d2d245e'
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
