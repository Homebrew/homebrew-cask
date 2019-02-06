cask 'franz' do
  version '5.0.0-beta.24'
  sha256 '123ad826adadc5d40b81d412f85fdb047b7bbf14d3e4aa918393b18eae7feb75'

  # github.com/meetfranz/franz was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz/releases.atom'
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
