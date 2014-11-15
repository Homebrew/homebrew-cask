cask :v1 => 'handbrake' do
  version '0.9.9'
  sha256 '050f9d0d3a126b25d24cb4971062d66f4f975317b6586f8c288795c17a0c05f9'

  url "http://handbrake.fr/rotation.php?file=HandBrake-#{version}-MacOSX.6_GUI_x86_64.dmg"
  appcast 'http://handbrake.fr/appcast.x86_64.xml',
          :sha256 => 'f0e700c39b76c16dba12ff8b931ae75ae4d764f1e8d1f5b2deb9231e5a445390'
  homepage 'http://handbrake.fr/'
  license :oss

  app 'HandBrake.app'
end
