cask 'brave' do
  version '0.18.29'
  sha256 'acd98078d16271dbe52f38dca41101d7a4e63365447b0ddf8e6b81a12d6c77f7'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '54529584d3c1a9c7c5835d1856abb46915dea81f451319bd16138313f888b63a'
  name 'Brave'
  homepage 'https://brave.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave.app'

  zap delete: [
                '~/Library/Application Support/Brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
