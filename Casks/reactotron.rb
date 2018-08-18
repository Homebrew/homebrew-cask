cask 'reactotron' do
  version '2.1.0'
  sha256 '4e0697a5c56fec2699a9f6e55bf4153b53dc591041cd1c7df69be23c4ac935e6'

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron.app.zip"
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
