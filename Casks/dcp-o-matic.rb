cask 'dcp-o-matic' do
  version '2.14.19'
  sha256 'c27bed5ded06c4ea6031f361d167a9073923e68815d4c45bb0671f870f524e1d'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
