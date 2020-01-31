cask 'dcp-o-matic' do
  version '2.14.25'
  sha256 'c533629833953eb9ef925ae162ef5b85025f9c054ced738637271968f0d8c6cd'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
