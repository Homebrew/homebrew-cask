cask 'handbrake' do
  version '0.10.5'
  sha256 'a2f1cacfb508e5ebe2489c64fa15204f15578aaf5e7f8a5ae9ab1fdccde51222'

  url "http://download.handbrake.fr/releases/#{version}/HandBrake-#{version}-MacOSX.6_GUI_x86_64.dmg"
  appcast 'https://handbrake.fr/appcast.x86_64.xml',
          checkpoint: '4a7758883f991b677ada503d54925f0182da7b9c66557495e1bd204a859d9b03'
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :oss

  auto_updates true

  app 'HandBrake.app'
end
