cask 'dcp-o-matic-batch-converter' do
  version '2.12.15'
  sha256 '9d68a62949fdce03786001dcd2b65cfcd6f6b094b34928ac3d573bf9aa0f6839'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
