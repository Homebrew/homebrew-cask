cask 'mendeley' do
  version '1.17.13'
  sha256 'd1316eafbf661adfedfdb2daad8527c177036a9fa30b9ba7b2eac696c0a1d54f'

  url "https://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
