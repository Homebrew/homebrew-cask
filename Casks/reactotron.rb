cask 'reactotron' do
  version '2.8.1'
  sha256 'badcab64c347c35718f81ffa8d1a73f669de03d21965dce5814eec037e906a91'

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
