cask 'dcp-o-matic-kdm-creator' do
  version '2.14.21'
  sha256 'e465b1d49c98c9cfce707a6031c4f7791cfda665e1a11640d52a5c470f7d63fe'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
