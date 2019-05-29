cask 'dcp-o-matic-batch-converter' do
  version '2.14.7'
  sha256 '8bd08cff4e5580ffaaa42bc6e3551a4742fd93cf2f1c69d77df61a8b0bc6d635'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
