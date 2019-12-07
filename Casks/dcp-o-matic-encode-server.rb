cask 'dcp-o-matic-encode-server' do
  version '2.14.16'
  sha256 '526560ae45731cdf45ab54441879d2c75a217bbe94300ae92b40d85015e5a8b5'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
