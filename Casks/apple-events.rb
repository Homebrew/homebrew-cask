cask 'apple-events' do
  version '0.7'
  sha256 '02348341c90ac1810e326ee936854254fe1f29b50fac751266bd6934eba6b206'

  url "https://github.com/insidegui/AppleEvents/releases/download/#{version}/AppleEvents_v#{version}_r.zip"
  appcast 'https://github.com/insidegui/AppleEvents/releases.atom',
          checkpoint: 'cdf5faa46cdf2b6215c68424a681bba8462d5f4e0d39791929f2411b4bd08b9f'
  name 'Apple Events'
  homepage 'https://github.com/insidegui/AppleEvents'

  auto_updates true

  app 'Apple Events.app'

  zap delete: [
                '~/Library/Application Support/br.com.guilhermerambo.Apple-Events',
                '~/Library/Caches/br.com.guilhermerambo.Apple-Events',
                '~/Library/Preferences/br.com.guilhermerambo.Apple-Events.plist',
              ]
end
