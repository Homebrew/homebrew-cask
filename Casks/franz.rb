cask 'franz' do
  version '5.0.0-beta.16'
  sha256 '656376a36f510295eaf3c54eebe968abd426162427d8919147040d3183aa4ff7'

  # github.com/meetfranz/franz was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz/releases.atom',
          checkpoint: '62cd70cd039061bb6fc73a5b292f793380ccb0faadc78f01124f7e75172d3b0d'
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
