cask 'dcp-o-matic-encode-server' do
  version '2.12.19'
  sha256 '0c42f4e596f07b35014837001d0fd6c95d415d5cd75576085f19c7cf41abac8a'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
