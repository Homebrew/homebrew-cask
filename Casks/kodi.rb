cask 'kodi' do
  version '17.5-Krypton'
  sha256 'ecb188a86c28a9c914ca7592a0dd07555a73bdcd42333eb773840c12494a817e'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  appcast 'https://github.com/xbmc/xbmc/releases.atom',
          checkpoint: '7c779e1983f72da1d75e539e690cefb2911eb58170dc965d683a935d5bf82276'
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
