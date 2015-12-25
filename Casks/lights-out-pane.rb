cask 'lights-out-pane' do
  version '1.1'
  sha256 'eb33e8a0242cbc69ebb7b6ee9c67fb69941e203fe560f37a83677f3c9cceeebf'

  url "https://github.com/samturner/lights-out/releases/download/v#{version}/lights-out.prefPane.zip"
  appcast 'https://github.com/samturner/lights-out/releases.atom',
          :sha256 => '75854d32af21716adf8b5fe34b0ae4a4ab80f457dc7c0671976fe1622de5dd70'
  name 'Lights Out'
  homepage 'https://samturner.github.io/lights-out/'
  license :gpl

  prefpane 'lights-out.prefPane'
end
