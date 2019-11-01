cask 'dcp-o-matic-encode-server' do
  version '2.14.13'
  sha256 '1fd6f93185a45efe08c067eef77c2a3078ddd0ef642eeba03473930abbe5d06d'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
