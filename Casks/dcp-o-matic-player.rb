cask 'dcp-o-matic-player' do
  version '2.14.21'
  sha256 'f4676ed997716f02fe6fbbe38331f9fd880e37092db77337c8fa707c9af867eb'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
