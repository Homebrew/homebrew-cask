cask 'dcp-o-matic-kdm-creator' do
  version '2.14.4'
  sha256 '9815f5a685e54af346f2aafdde4e66538b38863928ea32c5ee650c91f644e3f6'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
