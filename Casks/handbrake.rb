cask 'handbrake' do
  version '0.10.2'
  sha256 '9591cefbfcbe97ad4e039b456f82ea0e76035b5db9c9aa2ebca044fb171d4dd5'

  url "http://download.handbrake.fr/releases/#{version}/HandBrake-#{version}-MacOSX.6_GUI_x86_64.dmg"
  appcast 'https://handbrake.fr/appcast.x86_64.xml',
          :checkpoint => 'f06989af1016fe81f79eb4d14c06c6c5873564eab575d6c48911d26e4f164803'
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :oss

  app 'HandBrake.app'
end
