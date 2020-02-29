cask 'dcp-o-matic-batch-converter' do
  version '2.14.30'
  sha256 'dd1f85d88aaf10290ad360282920c7394fbd1e5e0ad50999529d7a807a5f4e21'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
