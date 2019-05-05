cask 'dcp-o-matic-batch-converter' do
  version '2.14.1'
  sha256 '74e2efd5f23f4a62c7744fb14281ea5a8146851f4caa05d0c16912c44ec4fff5'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
