cask 'dcp-o-matic-kdm-creator' do
  version '2.14.0'
  sha256 'dc6784a1b13442a3caa8794704b93af720832914e0824320d27185d9f724ac9b'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
