cask 'dcp-o-matic-kdm-creator' do
  version '2.12.15'
  sha256 'd3840ad0784a8722cb4ee00a41002c8ecb86142cddcc38c1497ee073f03f4f8e'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
