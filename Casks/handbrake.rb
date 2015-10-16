cask :v1 => 'handbrake' do
  version '0.10.2'
  sha256 '9591cefbfcbe97ad4e039b456f82ea0e76035b5db9c9aa2ebca044fb171d4dd5'

  url "http://download.handbrake.fr/releases/#{version}/HandBrake-#{version}-MacOSX.6_GUI_x86_64.dmg"
  appcast 'https://handbrake.fr/appcast.x86_64.xml',
          :sha256 => 'f0e700c39b76c16dba12ff8b931ae75ae4d764f1e8d1f5b2deb9231e5a445390'
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :oss

  app 'HandBrake.app'
end
