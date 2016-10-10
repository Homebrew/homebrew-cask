cask 'handbrakecli' do
  version '0.10.5'
  sha256 '7f292422f4e13b59a936bb4e433a9248afaf5dd5f428e5928d54b0dee98a8786'

  url "http://download.handbrake.fr/releases/#{version}/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  appcast 'https://github.com/HandBrake/HandBrake/releases.atom',
          checkpoint: '2b923cfd24bf46490955348df4961fde6deaa3b0e1345d7775adcea86176a34a'
  name 'HandBrake'
  homepage 'https://handbrake.fr'

  binary 'HandBrakeCLI'
end
