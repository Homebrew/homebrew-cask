cask 'lights-out-pane' do
  version '1.1'
  sha256 'eb33e8a0242cbc69ebb7b6ee9c67fb69941e203fe560f37a83677f3c9cceeebf'

  # github.com/samturner/lights-out was verified as official when first introduced to the cask
  url "https://github.com/samturner/lights-out/releases/download/v#{version}/lights-out.prefPane.zip"
  appcast 'https://github.com/samturner/lights-out/releases.atom',
          checkpoint: '75854d32af21716adf8b5fe34b0ae4a4ab80f457dc7c0671976fe1622de5dd70'
  name 'Lights Out'
  homepage 'https://samturner.github.io/lights-out/'

  prefpane 'lights-out.prefPane'
end
