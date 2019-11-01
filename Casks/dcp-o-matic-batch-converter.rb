cask 'dcp-o-matic-batch-converter' do
  version '2.14.13'
  sha256 'd603b13ebe319a261e72707d896b2e7c2bd4f5535755702276e4fe1ac8d2abfb'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
