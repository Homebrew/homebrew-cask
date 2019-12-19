cask 'dcp-o-matic-encode-server' do
  version '2.14.18'
  sha256 'e30bedea174696a1273f20e871e3400a0d1209f122fc7fbefd497b6134720ae6'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
