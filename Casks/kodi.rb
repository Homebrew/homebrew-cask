cask 'kodi' do
  version '18.5-Leia'
  sha256 '61bb993c5dd703d3b135ff2820bbf7bccc25c20ddf719c264b39bab28d6be8ec'

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
