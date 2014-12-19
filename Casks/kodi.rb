cask :v1 => 'kodi' do
  version '14.0'
  sha256 '04a75cff7a59cca0ba63e3312652be4609ba497e41b098f9546d0cdaf62b6ef4'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-Helix-x86_64.dmg"
  name 'Kodi'
  name 'XBMC'
  homepage 'http://kodi.tv/'
  license :oss

  app 'Kodi.app'
end
