cask 'kodi' do
  version '17.6-Krypton'
  sha256 '1c35b240f7a300455a2a76e7ea08b6290abdfe0f8c8d60e2a59d6fa5c3ce96ae'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  appcast 'https://github.com/xbmc/xbmc/releases.atom',
          checkpoint: '7549879e6648a1870c830256834e0b5ac2a5c7c00059de3902c1c6d84ecf9e33'
  name 'Kodi'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'

  zap delete: [
                '~/Library/Logs/kodi.log',
                '~/Library/Logs/kodi.old.log',
                '~/Library/Saved Application State/org.xbmc.kodi.savedState',
              ],
      trash:  [
                '~/.kodi',
                '~/Library/Application Support/Kodi',
              ]
end
