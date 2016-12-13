cask 'boostnote' do
  version '0.7.4'
  sha256 '11cbed73c9b5a1fed34eebbde56ae0d0c48a6a65c969ef63c2ccc0d84dc5c6b8'

  # github.com/BoostIO/boost-releases was verified as official when first introduced to the cask
  url "https://github.com/BoostIO/boost-releases/releases/download/v#{version}/Boostnote-mac.dmg"
  appcast 'https://github.com/BoostIO/boost-releases/releases.atom',
          checkpoint: 'fcc74fbc66f253f4457ef06727d3f797a567dad2b95b98c42b8a518ea70f2c43'
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
