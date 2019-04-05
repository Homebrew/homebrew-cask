cask 'franz' do
  version '5.0.1'
  sha256 '653a7fbe75f8ab32fa0a1345e7bb19c88cd49b5444b1e17a37fb4d6bab28d4a4'

  # github.com/meetfranz/franz was verified as official when first introduced to the cask
  url "https://github.com/meetfranz/franz/releases/download/v#{version}/franz-#{version}.dmg"
  appcast 'https://github.com/meetfranz/franz/releases.atom'
  name 'Franz'
  homepage 'https://meetfranz.com/'

  auto_updates true

  app 'Franz.app'

  uninstall quit:       'com.meetfranz.franz.*',
            login_item: 'Franz'

  zap trash: [
               '~/Library/Application Support/Franz',
               '~/Library/Preferences/com.electron.franz.helper.plist',
               '~/Library/Preferences/com.electron.franz.plist',
               '~/Library/Saved Application State/com.electron.franz.savedState',
             ]
end
