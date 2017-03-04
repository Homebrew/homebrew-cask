cask 'kodi' do
  version '17.0-Krypton'
  sha256 '8d078f0415d8843f94cf38b9c4354aeb5befd54dfd1602fcbc78717bee470b84'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-x86_64.dmg"
  appcast 'https://github.com/xbmc/xbmc/releases.atom',
          checkpoint: '7777f681984dc17c492a1a43212ae3822a8601a4b86c072375f59d2b2625e659'
  name 'Kodi'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
