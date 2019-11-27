cask 'dcp-o-matic-encode-server' do
  version '2.14.14'
  sha256 'ff7034ebd881eac24d9fd07308ae0a5d2daadd34bdb005d318fad86252084a74'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
