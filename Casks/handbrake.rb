cask 'handbrake' do
  version '0.10.5'
  sha256 'a2f1cacfb508e5ebe2489c64fa15204f15578aaf5e7f8a5ae9ab1fdccde51222'

  url "http://download.handbrake.fr/releases/#{version}/HandBrake-#{version}-MacOSX.6_GUI_x86_64.dmg"
  appcast 'https://handbrake.fr/appcast.x86_64.xml',
          checkpoint: '701d8c213ba3c05ca2e6f71b26bff2badaae1bed2f19902184c7877c179d3a1f'
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :oss

  auto_updates true

  app 'HandBrake.app'
end
