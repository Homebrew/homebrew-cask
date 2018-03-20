cask 'franz' do
  version '5.0.0-beta.17'
  sha256 '2b388cb82da5bac7fb1bd71e17bab894523c6fce26631b297bb66d78387985c3'

  # github.com/meetfranz/franz was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz/releases.atom',
          checkpoint: 'f1a1b87b70a4f88c6075a36199e605ee9c398882e5be509958a3888fb453591a'
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
