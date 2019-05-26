cask 'dcp-o-matic-player' do
  version '2.14.4'
  sha256 '50f8253079e921edf0f272b71ebb9986f013ac851f007390bf0e4dfd8c8af9f3'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
