cask 'boostnote' do
  version '0.7.0'
  sha256 'd56242ce3c58d90502fa6fcd87f6096f80c449690c8ccc53c16b6c202aef0544'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: '6409c85196d05b35a86505f0c20e89be7f2cb79d13f2a56162147bcba80f5a20'
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
