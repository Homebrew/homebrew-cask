cask :v1 => 'lights-out-pane' do
  version '1.1'
  sha256 'eb33e8a0242cbc69ebb7b6ee9c67fb69941e203fe560f37a83677f3c9cceeebf'

  url "https://github.com/samturner/lights-out/releases/download/v#{version}/lights-out.prefPane.zip"
  homepage 'http://samturner.github.io/lights-out/'
  license :gpl

  prefpane 'lights-out.prefPane'
end
