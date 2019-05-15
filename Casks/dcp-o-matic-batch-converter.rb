cask 'dcp-o-matic-batch-converter' do
  version '2.14.2'
  sha256 '424e788b254ad009162e587208994932a4a5eedb5fa43a8e2552d3ed70b107cd'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
