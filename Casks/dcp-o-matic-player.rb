cask 'dcp-o-matic-player' do
  version '2.12.8'
  sha256 '90c94b31fa7f7e90f633d00f7a92cf916811be730d1224e981f3ee1dc27224e2'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
