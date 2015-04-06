cask :v1 => 'handbrakecli' do
  version '0.10.1'
  sha256 '457eecaa9758b91772c29874be1bac549d1d6645f7cac09c23886b734fe0151f'

  url "http://download.handbrake.fr/releases/#{version}/HandBrake-#{version}-MacOSX.6_CLI_x86_64.dmg"
  name 'HandBrake'
  homepage 'https://handbrake.fr'
  license :oss

  binary 'HandBrakeCLI'
end
