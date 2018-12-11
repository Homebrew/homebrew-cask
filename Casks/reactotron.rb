cask 'reactotron' do
  version '2.4.4'
  sha256 'a1e0cd46bda98f15f9ddee3cfaf9e3f9e02e7311d26e4d60a6e074e49d4e0a93'

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron-#{version}-mac.zip"
  appcast 'https://github.com/infinitered/reactotron/releases.atom'
  name 'Reactotron'
  homepage 'https://github.com/infinitered/reactotron'

  app 'Reactotron.app'

  zap trash: [
               '~/Library/Application Support/Reactotron',
               '~/Library/Preferences/com.reactotron.app.helper.plist',
               '~/Library/Preferences/com.reactotron.app.plist',
               '~/Library/Saved Application State/com.reactotron.app.savedState',
             ]
end
