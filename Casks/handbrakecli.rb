cask 'handbrakecli' do
  version '0.10.5'
  sha256 '7f292422f4e13b59a936bb4e433a9248afaf5dd5f428e5928d54b0dee98a8786'

  url "http://download.handbrake.fr/releases/#{version}/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :oss

  binary 'HandBrakeCLI'
end
