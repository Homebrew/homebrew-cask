cask 'kodi' do
  version '17.2-Krypton'
  sha256 'd8df20fab6456626652010c9b136ecd0775e9d3d16dd52dd6f53c27ec4683504'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  appcast 'https://github.com/xbmc/xbmc/releases.atom',
          checkpoint: '5d35ae8b83f1ebaf6a0d7bed996483335d6d00eeea8752f5b02dedaa9ab4feaa'
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
