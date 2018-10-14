cask 'kodi' do
  version '17.6-Krypton'
  sha256 '1c35b240f7a300455a2a76e7ea08b6290abdfe0f8c8d60e2a59d6fa5c3ce96ae'

  url "https://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  appcast 'https://github.com/xbmc/xbmc/releases.atom'
  name 'Kodi'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'

  zap trash: [
               '~/.kodi',
               '~/Library/Application Support/Kodi',
               '~/Library/Logs/kodi.log',
               '~/Library/Logs/kodi.old.log',
               '~/Library/Saved Application State/org.xbmc.kodi.savedState',
             ]
end
