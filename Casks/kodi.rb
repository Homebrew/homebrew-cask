cask 'kodi' do
  version '16.0'
  sha256 '65766b8835a85a48b1d81c9578dfc4c1a1ad2dcdc5450447ebbb44976ebb29bd'

  url "http://mirrors.kodi.tv/releases/osx/x86_64/kodi-#{version}-Jarvis-x86_64.dmg"
  name 'Kodi'
  homepage 'https://kodi.tv/'
  license :gpl

  app 'Kodi.app'
end
