cask :v1 => 'kodi' do
  version '14.1'
  sha256 'cf71db03a6878673df95c7983feac4a6d750c9b798553ea19e80d95ba2f5d6c8'

  # xbmc.org is the official download host per the vendor homepage
  url "http://mirrors.xbmc.org/releases/osx/x86_64/kodi-#{version}-Helix-x86_64.dmg"
  name 'Kodi'
  name 'XBMC' # former
  homepage 'http://kodi.tv/'
  license :gpl

  app 'Kodi.app'
end
