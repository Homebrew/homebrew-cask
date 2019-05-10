cask 'dcp-o-matic-player' do
  version '2.14.2'
  sha256 'eb808fd625e1022b0fa5782decce24863d2413d159412675c240736b5edbb5a3'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
