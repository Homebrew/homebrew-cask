cask 'apple-events' do
  version '0.8'
  sha256 'ed120b247a17dc873c8ee8c1c87a1ffa41d0d26e05361a352d55017a24033806'

  url "https://github.com/insidegui/AppleEvents/releases/download/#{version}/AppleEvents_v#{version}.zip"
  appcast 'https://github.com/insidegui/AppleEvents/releases.atom',
          checkpoint: 'f2d92a82be4e0ccaa583de775f63de1f79a8f81e44974ec554a6b8a36a3a055f'
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
