cask 'dcp-o-matic-encode-server' do
  version '2.12.9'
  sha256 '9d1e2792d5a78c1c2ecf5b48670192fa88955511b6117a8485918579b7efec19'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
