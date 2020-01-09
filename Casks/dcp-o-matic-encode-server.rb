cask 'dcp-o-matic-encode-server' do
  version '2.14.21'
  sha256 '686c1ac8ff55a3527a01795b0f12010985d1abaa4a6d41e24ef1c8c1d56b3c04'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
