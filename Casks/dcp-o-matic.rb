cask 'dcp-o-matic' do
  version '2.14.0'
  sha256 'cc9230af1195453c51f15cd9d344f88aed261cb6274c2caf957e56161a800a30'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
