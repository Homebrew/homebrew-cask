cask 'dcp-o-matic-batch-converter' do
  version '2.12.10'
  sha256 'e86a38abd803e8d87a52b49f67e3626926e214df78e6523dead8f5a919c275f7'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
