cask 'dcp-o-matic-player' do
  version '2.12.20'
  sha256 '9662a61647e6956f0c179c58c7ad1534461973e94f85cc4477e8ba8242105425'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
