cask 'dcp-o-matic-encode-server' do
  version '2.14.15'
  sha256 'f115a435080d2d163653d2669e97730611c046d41e55a55b03bb9b38150dc05c'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
