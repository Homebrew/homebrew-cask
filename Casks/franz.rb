cask 'franz' do
  version '5.0.0-beta.18'
  sha256 'b964a1976948b7af71147659a4651f7576859fb6fdc8020288f44f0351841099'

  # github.com/meetfranz/franz was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz/releases.atom',
          checkpoint: '87912613aed376fe9ecd33b06f5c0f9629764a9c12c846b8a2136cdd8febeeba'
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
