cask 'dcp-o-matic-kdm-creator' do
  version '2.14.25'
  sha256 '759e84468dee6c01c94d53c1ed36082d9b5ff0dd6ddfb37fa849e1623c477cc4'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
