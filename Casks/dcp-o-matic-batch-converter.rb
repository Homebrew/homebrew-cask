cask 'dcp-o-matic-batch-converter' do
  version '2.14.10'
  sha256 '4fd29a186511330481d19af23e5af90d39c674996ea88367c1994653669dc1d4'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
