cask 'brave' do
  version '0.18.29'
  sha256 'acd98078d16271dbe52f38dca41101d7a4e63365447b0ddf8e6b81a12d6c77f7'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '9297b46ccde5ec5493b739b1d3ca5b787477c49fc88d0011dffbe9ba9805d25c'
  name 'Brave'
  homepage 'https://brave.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave.app'

  zap delete: '~/Library/Saved Application State/com.electron.brave.savedState',
      trash:  [
                '~/Library/Application Support/brave',
                '~/Library/Preferences/com.electron.brave.plist',
              ]
end
