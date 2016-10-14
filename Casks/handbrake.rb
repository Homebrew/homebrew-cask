cask 'handbrake' do
  version '0.10.5'
  sha256 'a2f1cacfb508e5ebe2489c64fa15204f15578aaf5e7f8a5ae9ab1fdccde51222'

  url "http://download.handbrake.fr/handbrake/releases/#{version}/HandBrake-#{version}-MacOSX.6_GUI_x86_64.dmg"
  appcast 'https://github.com/HandBrake/HandBrake/releases.atom',
          checkpoint: '2b923cfd24bf46490955348df4961fde6deaa3b0e1345d7775adcea86176a34a'
  name 'HandBrake'
  homepage 'https://handbrake.fr'

  auto_updates true

  app 'HandBrake.app'
end
