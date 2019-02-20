cask 'dcp-o-matic-kdm-creator' do
  version '2.12.20'
  sha256 'ff5a1b4e0fac6ed5e351d25fc40e1073662c85543c3e0fec29c36d48d330b3bf'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
