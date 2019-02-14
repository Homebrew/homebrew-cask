cask 'dcp-o-matic-encode-server' do
  version '2.12.20'
  sha256 '9d77a92b9f6bbc924815a37166dd7ee960be21afc3854f383b3b1d0c5a2bb350'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
