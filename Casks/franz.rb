cask 'franz' do
  version '5.0.0'
  sha256 'c2e3a6e33acf853300ad9f19f14ff733788aad702f023d3240f85eee793f1c29'

  # github.com/meetfranz/franz was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz/releases.atom'
  name 'Franz'
  homepage 'https://meetfranz.com/'

  auto_updates true

  app 'Franz.app'

  zap trash: [
               '~/Library/Application Support/Franz',
               '~/Library/Preferences/com.electron.franz.helper.plist',
               '~/Library/Preferences/com.electron.franz.plist',
               '~/Library/Saved Application State/com.electron.franz.savedState',
             ]
end
