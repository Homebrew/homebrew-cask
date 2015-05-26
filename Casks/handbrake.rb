cask :v1 => 'handbrake' do
  version '0.10.1'
  sha256 '7c6f231889433d932d3d483df8f4f90fab517386987376542176dd8d2d032bd2'

  url "http://download.handbrake.fr/releases/#{version}/HandBrake-#{version}-MacOSX.6_GUI_x86_64.dmg"
  appcast 'http://handbrake.fr/appcast.x86_64.xml',
          :sha256 => 'f0e700c39b76c16dba12ff8b931ae75ae4d764f1e8d1f5b2deb9231e5a445390'
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :oss

  app 'HandBrake.app'
end
