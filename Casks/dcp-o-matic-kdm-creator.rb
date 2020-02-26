cask 'dcp-o-matic-kdm-creator' do
  version '2.14.30'
  sha256 'b958c304955b5a12a8572330dbcf8e43a4fcb89687e417e103dea81ed670b92d'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
