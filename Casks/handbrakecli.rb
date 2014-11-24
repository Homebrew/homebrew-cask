cask :v1 => 'handbrakecli' do
  version '0.10.0'
  sha256 '84dcc20cffd2cbbe1d7804dbb8dfdb4ce7ce78b2f44ae25a998f18771a9c05f9'

  url "http://download.handbrake.fr/releases/#{version}/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  homepage 'http://handbrake.fr'
  license :oss

  binary 'HandBrakeCLI'
end
