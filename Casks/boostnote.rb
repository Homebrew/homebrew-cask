cask 'boostnote' do
  version '0.8.2'
  sha256 'a0eeddc8a16f43d31038e7f9261ae3cbef3b2acf19e5d2e3c9a1fd33f38f8093'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: 'ed6319b0ee6d7d3e121f8475c9cb77f406fd791f7a21055886e8933350feceef'
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
