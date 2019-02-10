cask 'dcp-o-matic-batch-converter' do
  version '2.12.19'
  sha256 'b808e63750f7e07780592f6ec181ed97bd43aea35e5468f03638fb7f789b9e4f'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
