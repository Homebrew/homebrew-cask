cask :v1 => 'kodi' do
  version '14.0'
  sha256 'bf0f5b836a517edeb78b75424b929c9d42067463232e6f62a2df327a947d9d35'

  url "http://mirrors.xbmc.org/releases/osx/x86_64/kodi-#{version}-Helix-x86_64.dmg"
  name 'Kodi'
  name 'XBMC'    # former
  homepage 'http://kodi.tv/'
  license :gpl

  app 'Kodi.app'
end
