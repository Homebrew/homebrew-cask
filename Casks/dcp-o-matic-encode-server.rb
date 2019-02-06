cask 'dcp-o-matic-encode-server' do
  version '2.12.18'
  sha256 '7c834e276978ad7d68cfd9bd3133ff16b6a607efc7999240f9f18dffbe94903e'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
