cask 'handbrake' do
  version '0.10.5'
  sha256 'a2f1cacfb508e5ebe2489c64fa15204f15578aaf5e7f8a5ae9ab1fdccde51222'

  url "http://download.handbrake.fr/handbrake/releases/#{version}/HandBrake-#{version}-MacOSX.6_GUI_x86_64.dmg"
  appcast 'https://handbrake.fr/appcast.x86_64.xml',
          checkpoint: '7518bedc8a1da492621dd67d681e072a4071d0a0b0bb3623909dbd2a9092cc86'
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :oss

  auto_updates true

  app 'HandBrake.app'
end
