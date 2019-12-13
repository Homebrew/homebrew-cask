cask 'dcp-o-matic-batch-converter' do
  version '2.14.17'
  sha256 '83bbebe4ecbaa684b9f01dcd2917b91944fd6d7c43454ccd4467c674ca049199'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
