cask 'dcp-o-matic-kdm-creator' do
  version '2.14.16'
  sha256 'e0abf6c2a2367e0d166f5fb373043135c1ac38a9f71ef7b902ce89dee8c27ad6'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
