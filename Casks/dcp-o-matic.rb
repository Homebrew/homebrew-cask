cask 'dcp-o-matic' do
  version '2.14.26'
  sha256 'aaee3d2d3fc04b613190efbc0d85226e4b030efa8b47e91eb2f4b473202f032d'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
