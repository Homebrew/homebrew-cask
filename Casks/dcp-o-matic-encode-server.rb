cask 'dcp-o-matic-encode-server' do
  version '2.12.15'
  sha256 'a3eb9ba75a1c7bd99b69a567edd3b22aa5828d1205b7b0232f0ae6c6520232ce'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
