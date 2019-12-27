cask 'dcp-o-matic-encode-server' do
  version '2.14.19'
  sha256 '357dfd704ae231563b523096115a31921334d1aa27260b05cee380c8d8be98ed'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
