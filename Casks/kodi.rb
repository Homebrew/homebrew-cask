cask :v1 => 'kodi' do
  version '15.1'
  sha256 'dc4e113d4315809d8b279fa0e4331e386b7690ae099b3cfb93e27b97331f2770'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-Isengard-x86_64.dmg"
  name 'Kodi'
  name 'XBMC' # former
  homepage 'https://kodi.tv/'
  license :gpl

  app 'Kodi.app'
end
