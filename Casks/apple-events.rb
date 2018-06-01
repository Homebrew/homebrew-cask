cask 'apple-events' do
  version '1.1'
  sha256 '70b2b360cba05e72e49ceb9ee0410514fe14cca0fe65b7c8ae5a13aa991f3d15'

  url "https://github.com/insidegui/AppleEvents/releases/download/#{version}/AppleEvents_v#{version}.zip"
  appcast 'https://github.com/insidegui/AppleEvents/releases.atom',
          checkpoint: '502db9ed45596ef5c6f26baa3606b27e794418d02891f02be6493468b47372e5'
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
