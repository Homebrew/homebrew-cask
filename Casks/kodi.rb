cask 'kodi' do
  version '18.3-Leia'
  sha256 'e11cf112782d97251e3b18360e374c3d025c16b026eed01c6f3c31f5cc57bc7d'

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
