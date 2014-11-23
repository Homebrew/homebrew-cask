cask :v1 => 'handbrake' do
  version '0.10.0'
  sha256 'c26a1a37d03c977e0296f0198ce11bf74ee5da8aa410ea3b5eef6449e0aa3c9c'

  url "http://handbrake.fr/rotation.php?file=HandBrake-#{version}-MacOSX.6_GUI_x86_64.dmg"
  appcast 'http://handbrake.fr/appcast.x86_64.xml',
          :sha256 => 'f0e700c39b76c16dba12ff8b931ae75ae4d764f1e8d1f5b2deb9231e5a445390'
  homepage 'http://handbrake.fr/'
  license :oss

  app 'HandBrake.app'
end
