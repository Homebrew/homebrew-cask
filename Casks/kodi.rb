cask 'kodi' do
  version '17.3-Krypton'
  sha256 'e119e2f937ed059e460dbe6682b640aa3c4ce6dfa8bbe8ce2bad65c9502cc103'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  appcast 'https://github.com/xbmc/xbmc/releases.atom',
          checkpoint: 'bc4e362549ef8625df611b99e1e9e259373b309a2dd102686efcc301df13821f'
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
