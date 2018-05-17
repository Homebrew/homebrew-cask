cask 'brave' do
  version '0.22.714'
  sha256 '0d7b9896dfc1f44df9c28976cee8ee1989f5e57f674c2eef8910274bbb689299'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '7306c0a98156ac8f5c5b69f5304532fabccb1327cd3c3e7e098cd4403ee90cd8'
  name 'Brave'
  homepage 'https://brave.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Brave.app'

  zap trash: [
               '~/Library/Application Support/brave',
               '~/Library/Preferences/com.electron.brave.plist',
               '~/Library/Saved Application State/com.electron.brave.savedState',
             ]
end
