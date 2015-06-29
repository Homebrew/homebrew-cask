cask :v1 => 'kodi' do
  version '14.2'
  sha256 'b674fd6287315b4cf0ec2a1775a746b51ecbbd782d1c572334cee80ad1ee81ed'

  # xbmc.org is the official download host per the vendor homepage
  url "http://mirrors.xbmc.org/releases/osx/x86_64/kodi-#{version}-Helix-x86_64.dmg"
  name 'Kodi'
  name 'XBMC' # former
  homepage 'https://kodi.tv/'
  license :gpl

  app 'Kodi.app'
end
