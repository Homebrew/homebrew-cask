cask 'dcp-o-matic-kdm-creator' do
  version '2.14.19'
  sha256 '8a8f5f8f07efc4100ed78da41e49fbd4c6e9e3ca348e54e8635c38cca5b13527'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
