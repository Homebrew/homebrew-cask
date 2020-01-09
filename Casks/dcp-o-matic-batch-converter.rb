cask 'dcp-o-matic-batch-converter' do
  version '2.14.21'
  sha256 '1328ed80af35f8189d3fbcac16e647dcaa50e8092bad66fadd6c42f5152a8efb'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
