cask 'dcp-o-matic-kdm-creator' do
  version '2.14.32'
  sha256 '364c1d1a198e13d2d8ddf00b35a256a998158d6186cf6678bad59fe36c770cd5'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
