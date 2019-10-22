cask 'dcp-o-matic-kdm-creator' do
  version '2.14.11'
  sha256 '37fda36d4902d0d6a10c0c3ae71e3211dfc2cafed12ce8c0efc383bfd850f18d'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
