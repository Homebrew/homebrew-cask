cask 'brave' do
  version '0.19.88'
  sha256 '8b09fff865693ddf54acc403819db92ac87335d19bf55103a4cc862e404f5179'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '795ec0f309546ede51f67e5b11971464adf8732e7e540dbed12adb5929c7d3ee'
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
