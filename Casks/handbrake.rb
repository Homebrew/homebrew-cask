cask 'handbrake' do
  version '0.10.2'
  sha256 '9591cefbfcbe97ad4e039b456f82ea0e76035b5db9c9aa2ebca044fb171d4dd5'

  url "http://download.handbrake.fr/releases/#{version}/HandBrake-#{version}-MacOSX.6_GUI_x86_64.dmg"
  appcast 'https://handbrake.fr/appcast.x86_64.xml',
          :sha256 => '53220e13986dd207db920b7d91277b38fb475390120142dbb293d0cfef0fedbf'
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :oss

  app 'HandBrake.app'
end
