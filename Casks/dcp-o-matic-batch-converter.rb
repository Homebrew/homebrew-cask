cask 'dcp-o-matic-batch-converter' do
  version '2.14.33'
  sha256 'caef7930cd780dda292e5b0986cf8b46b4c67e2b4be2a2032f73b4fe28cbbf9e'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
