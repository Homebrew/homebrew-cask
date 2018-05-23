cask 'apple-events' do
  version '1.0'
  sha256 'd2daa6a298d9037b2d073b3857dd4d7d55152d93d3074417d191f94f7ca4f4db'

  url "https://github.com/insidegui/AppleEvents/releases/download/#{version}/AppleEvents_v#{version}.zip"
  appcast 'https://github.com/insidegui/AppleEvents/releases.atom',
          checkpoint: '093a310cac1abdb64ee3e152747c5b571474f937398af8caaca01fcc8f022db9'
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
