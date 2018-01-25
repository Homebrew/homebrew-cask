cask 'apple-events' do
  version '0.9'
  sha256 'eabc7839534216db1afbfeac21c07999e68700ed30272d99c7c7e370c6684424'

  url "https://github.com/insidegui/AppleEvents/releases/download/#{version}/AppleEvents_v#{version}.zip"
  appcast 'https://github.com/insidegui/AppleEvents/releases.atom',
          checkpoint: 'd8972c470b53f92a238b7b84b5f7f53d496467f8ff89457d78ceb9532409c8d0'
  name 'Apple Events'
  homepage 'https://github.com/insidegui/AppleEvents'

  auto_updates true

  app 'Apple Events.app'

  zap trash: [
               '~/Library/Application Support/br.com.guilhermerambo.Apple-Events',
               '~/Library/Caches/br.com.guilhermerambo.Apple-Events',
               '~/Library/Preferences/br.com.guilhermerambo.Apple-Events.plist',
             ]
end
