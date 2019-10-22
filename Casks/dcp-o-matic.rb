cask 'dcp-o-matic' do
  version '2.14.11'
  sha256 '80291e2f958b285f322a8e9a2e928c4e3a08ff4f6c879fcce76ea7d0d3c9a71b'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
