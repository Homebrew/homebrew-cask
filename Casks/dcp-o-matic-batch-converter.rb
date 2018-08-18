cask 'dcp-o-matic-batch-converter' do
  version '2.12.9'
  sha256 '0a28061ff644bfea6f3281111c4e2337fd26db994d9e1926e3b1c12fba0a67ce'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
