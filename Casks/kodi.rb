cask 'kodi' do
  version '17.4-Krypton'
  sha256 'b7ba23a154cb1551c3670296f1448fbd93d286b0e90dee8d724b4b26a6e8a7e2'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  appcast 'https://github.com/xbmc/xbmc/releases.atom',
          checkpoint: 'd3a045daf4c1e117cb6acec422a927e7bc893aec1c75e66552ede8a795c43163'
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
