cask 'dcp-o-matic-kdm-creator' do
  version '2.12.9'
  sha256 '5aa525ce5964ac439cd3ea8e7c69cd3147e0bc46fe21bed9d82af1afbca82ab7'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
