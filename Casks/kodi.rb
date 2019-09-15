cask 'kodi' do
  version '18.4-Leia'
  sha256 'e841d812ee9edc847133e4b474caba7750b3082228eccff386e1f13e7ad7cb0f'

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
