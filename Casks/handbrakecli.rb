cask :v1 => 'handbrakecli' do
  version '0.10.2'
  sha256 '4531d5b09b10e7d04aa35edac0a9979b995355b61bfe4c604d87d4daf66a590c'

  url "http://download.handbrake.fr/releases/#{version}/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :oss

  binary 'HandBrakeCLI'
end
