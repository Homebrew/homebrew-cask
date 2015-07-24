cask :v1 => 'kodi' do
  version '15.0'
  sha256 '2ebec4af240f4ba1875f29e4784396902d1c1c1e73bfecfa4f2e6d92128f891f'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-Isengard-x86_64.dmg"
  name 'Kodi'
  name 'XBMC' # former
  homepage 'https://kodi.tv/'
  license :gpl

  app 'Kodi.app'
end
