cask 'dcp-o-matic-kdm-creator' do
  version '2.12.19'
  sha256 '42bc9843e2306ff171f5a3fcd467b7d63343eb386b7b4cbefc7065c3296be867'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
