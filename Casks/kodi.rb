cask :v1 => 'kodi' do
  version '15.2'
  sha256 '9529729cf84bcb5f014ba030bf71f41cd2cb6b325ddd07f8605f37eef66c5760'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-Isengard-x86_64.dmg"
  name 'Kodi'
  name 'XBMC' # former
  homepage 'https://kodi.tv/'
  license :gpl

  app 'Kodi.app'
end
