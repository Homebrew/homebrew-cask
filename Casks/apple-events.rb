cask 'apple-events' do
  version '1.2'
  sha256 '47b109cf1aa91e6772b4941654cc8717aab4393f68646129cbd322e40154ab0b'

  url "https://github.com/insidegui/AppleEvents/releases/download/#{version}/AppleEvents_v#{version}.zip"
  appcast 'https://github.com/insidegui/AppleEvents/releases.atom'
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
