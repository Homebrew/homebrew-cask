cask 'dcp-o-matic-batch-converter' do
  version '2.14.0'
  sha256 'f0fc931f453c4be014fbb944c7629b032bf37a07e4256fbe75b9f46ff79cc7cd'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
