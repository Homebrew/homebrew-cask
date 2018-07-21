cask 'dcp-o-matic-kdm-creator' do
  version '2.12.6'
  sha256 'd5f757ca2d7419dbb84552cf1b50493a5d2e50a858cdbb9cc1d90eefb4c2b87d'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
