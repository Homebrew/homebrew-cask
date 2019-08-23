cask 'reactotron' do
  version '2.17.0'
  sha256 '41e306eb2a36d6bf891bfc3675d794e20dded26ac7ba9c197cc3ff06ab5f87d7'

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
