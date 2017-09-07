cask 'brave' do
  version '0.18.29'
  sha256 'acd98078d16271dbe52f38dca41101d7a4e63365447b0ddf8e6b81a12d6c77f7'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '209322263d943d71cf62082115b46d18ae1c23d5d36ab3c12500f0f9e520abe5'
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
