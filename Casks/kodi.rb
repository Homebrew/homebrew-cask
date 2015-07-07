cask :v1 => 'kodi' do
  version '14.2'

  if Hardware::CPU.is_32_bit?
    sha256 'c4bc7339a7abc2dc31eb2be6a012b513897d157c9a3b1b55e5d291c351c55a5c'
    url "http://mirrors.kodi.tv/releases/osx/i386/kodi-#{version}-Helix-i386.dmg"
  else
    sha256 'b674fd6287315b4cf0ec2a1775a746b51ecbbd782d1c572334cee80ad1ee81ed'
    url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-Helix-x86_64.dmg"
  end

  name 'Kodi'
  name 'XBMC' # former
  homepage 'https://kodi.tv/'
  license :gpl

  app 'Kodi.app'
end
