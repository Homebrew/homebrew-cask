cask 'dcp-o-matic-kdm-creator' do
  version '2.12.8'
  sha256 '667adcd74582bdf91e694b11a71ccea43b8b6b5c51db78de6fb2d3dc137592f0'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
