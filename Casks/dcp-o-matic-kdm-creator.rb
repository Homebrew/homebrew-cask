cask 'dcp-o-matic-kdm-creator' do
  version '2.14.33'
  sha256 '77d0adf99ad318e463dbedf97ce773c44015e78f61c830550ff9623fc0ec08b7'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
