cask 'dcp-o-matic-kdm-creator' do
  version '2.12.12'
  sha256 '7a07c6e013a958fed2945ac9b071352d315555d0627fa919e21e5bfc0a2daa44'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
