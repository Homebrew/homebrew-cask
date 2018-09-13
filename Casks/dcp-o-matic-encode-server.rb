cask 'dcp-o-matic-encode-server' do
  version '2.12.10'
  sha256 'b5ff88898de8b7d4016d7e1b1f2215f7fbab09b7eec9f83c4884176176b0f699'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
