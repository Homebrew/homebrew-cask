cask 'dcp-o-matic-kdm-creator' do
  version '2.14.23'
  sha256 '17ec3399f516220fb9fa6501b352d5835eb5b7bad769994958980e6d2c9d0454'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
