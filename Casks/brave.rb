cask 'brave' do
  version '0.18.23'
  sha256 '4fa819c9a08d91dfd644a1c476e8c6c614301f91b98f951bcb3bf7255b8b3e41'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '0cfb69cbf42db5b8550b472297d9e41f0b5eec9e37d77e67ca9966f10297be80'
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
