cask 'dcp-o-matic-kdm-creator' do
  version '2.14.8'
  sha256 '2231fb93de6767cd82aa426e8d16d37cede289533bd88b56bd38394a3328c152'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
