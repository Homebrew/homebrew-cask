cask 'kodi' do
  version '18.0-Leia'
  sha256 'd6bd869749b49fa5a1031f9cd58a238d9e559b00e9797cb8ee3aaf8ff0830490'

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
