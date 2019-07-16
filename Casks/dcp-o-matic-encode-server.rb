cask 'dcp-o-matic-encode-server' do
  version '2.14.8'
  sha256 '85a2ee483684094df08c65a9d11642839e216ec0e09147c69e99553ebacc1da3'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
