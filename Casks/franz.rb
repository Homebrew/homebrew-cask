cask 'franz' do
  version '5.0.0-beta.15'
  sha256 '2a1ca30c05d6534e4d9805ff22360e627882b2a5f61ce9d558c97a6c5aa72e0a'

  # github.com/meetfranz/franz was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz/releases.atom',
          checkpoint: '4715ee564fb05dbb6133581f39f47e0f4172ae56b714401b886bd75ab8ce1a37'
  name 'Franz'
  homepage 'https://meetfranz.com/'

  app 'Franz.app'

  zap trash: [
               '~/Library/Application Support/Franz',
               '~/Library/Preferences/com.electron.franz.helper.plist',
               '~/Library/Preferences/com.electron.franz.plist',
               '~/Library/Saved Application State/com.electron.franz.savedState',
             ]
end
