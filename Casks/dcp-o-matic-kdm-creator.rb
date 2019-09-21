cask 'dcp-o-matic-kdm-creator' do
  version '2.14.10'
  sha256 'a507a0b7e1a4b031ad58349675388e6aaf56a72d0e3838c74b8e6f17e7167c9a'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
