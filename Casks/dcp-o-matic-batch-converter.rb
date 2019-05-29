cask 'dcp-o-matic-batch-converter' do
  version '2.14.5'
  sha256 'bfa4327c34b15eb6eccea443a7e399a28505fdd76c14371f23a2b8d23cf2f563'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
