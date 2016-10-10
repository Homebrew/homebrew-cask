cask 'kodi' do
  version '16.1'
  sha256 '315ec1f3d64f6d5d7b55ecd80f839d0702326f6bbe80b64e94da4ae21ae44bca'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-Jarvis-x86_64.dmg"
  name 'Kodi'
  homepage 'https://kodi.tv/'

  app 'Kodi.app'
end
