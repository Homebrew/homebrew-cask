cask 'dcp-o-matic-kdm-creator' do
  version '2.14.7'
  sha256 '00a7a4eb6840455845e450f92528b14c856b25083c60fb38249c497b8afd622e'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
