cask 'reactotron' do
  version '2.13.2'
  sha256 '22ec592596feb2db84b97d7f7b24c83ea11e05a970a9801cfe90e26632b9dc17'

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron-#{version}-mac.zip"
  appcast 'https://github.com/infinitered/reactotron/releases.atom'
  name 'Reactotron'
  homepage 'https://github.com/infinitered/reactotron'

  auto_updates true

  app 'Reactotron.app'

  zap trash: [
               '~/Library/Application Support/Reactotron',
               '~/Library/Preferences/com.reactotron.app.helper.plist',
               '~/Library/Preferences/com.reactotron.app.plist',
               '~/Library/Saved Application State/com.reactotron.app.savedState',
             ]
end
