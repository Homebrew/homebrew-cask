cask 'dcp-o-matic-batch-converter' do
  version '2.14.18'
  sha256 'd99ad4ed54d0d83e5cb4e554af84f975b28b986511204af97c92a6eb7f007bed'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
