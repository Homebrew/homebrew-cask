cask 'dcp-o-matic-kdm-creator' do
  version '2.14.1'
  sha256 '9a2079cfd0a191926db45abd3bd65154cf805d0d957fda0c4af686f1ca2a9f8e'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
