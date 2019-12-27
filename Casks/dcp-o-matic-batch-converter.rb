cask 'dcp-o-matic-batch-converter' do
  version '2.14.19'
  sha256 '67fa48f6fe3595ef4a1efffb7be419e5c7e6bbf4637c2f043da1fc6b5f4a71dc'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
