cask 'dcp-o-matic-encode-server' do
  version '2.14.17'
  sha256 'af34d80f3b0a61373b77c79f7e969b89464915f6cdd1ae57313c306aa413eb89'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
