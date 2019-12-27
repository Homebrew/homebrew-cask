cask 'dcp-o-matic-kdm-creator' do
  version '2.14.17'
  sha256 '3053201f25bef3bcc34d3579d8e5e235681369c04d0997fa0756c64c48c74720'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
