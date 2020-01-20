cask 'dcp-o-matic-batch-converter' do
  version '2.14.23'
  sha256 '9db6b3e20abd89ac28d6df060b0988b11f875dbfcdad37f4cd29934da9f877e2'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
