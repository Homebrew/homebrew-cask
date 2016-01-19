cask 'handbrake' do
  version '0.10.2'
  sha256 '9591cefbfcbe97ad4e039b456f82ea0e76035b5db9c9aa2ebca044fb171d4dd5'

  url "http://download.handbrake.fr/releases/#{version}/HandBrake-#{version}-MacOSX.6_GUI_x86_64.dmg"
  appcast 'https://handbrake.fr/appcast.x86_64.xml',
          checkpoint: '751918e991147ecd36ac29782bb0f0eda5a3fde1301e4727ef5e5e02d63b1d44'
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :oss

  app 'HandBrake.app'
end
