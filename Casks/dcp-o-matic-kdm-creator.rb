cask 'dcp-o-matic-kdm-creator' do
  version '2.14.2'
  sha256 '70b0d0e5df442f8d045c3ae1ba5ea368ce98a803b378711619429d7daae40cda'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
