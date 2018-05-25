cask 'brave' do
  version '0.22.721'
  sha256 '2c24d712c6ae7cd8148c07ad2b2cfa3fa4f66812854b41157b62be2792e60b36'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}dev/Brave-#{version}.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '9af0da7e18d41c433d9c393c3dc75c9623d7c2534ad4c9fb43f7b5002560d2ef'
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
