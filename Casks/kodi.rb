cask 'kodi' do
  version '17.1-Krypton'
  sha256 '1c60aa80cd8397a9bd68ffd88c7da698043e940bc3db94550d8154f6ffb60807'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  appcast 'https://github.com/xbmc/xbmc/releases.atom',
          checkpoint: 'e5a9d76d3c2550cb39383d0120bc9e6360001c1988c4c3fa5df9d4ed5b4e4436'
  name 'Kodi'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'

  zap delete: [
                '~/.kodi',
                '~/Library/Application Support/Kodi',
                '~/Library/Logs/kodi.log',
                '~/Library/Logs/kodi.old.log',
                '~/Library/Saved Application State/org.xbmc.kodi.savedState',
              ]
end
