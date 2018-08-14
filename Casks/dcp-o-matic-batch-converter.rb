cask 'dcp-o-matic-batch-converter' do
  version '2.12.8'
  sha256 'b888dae2041a2b2c0940840acffdd61e82ea1f5bec84880e9c344317b22e0b16'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
