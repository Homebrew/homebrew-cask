cask 'dcp-o-matic-kdm-creator' do
  version '2.14.26'
  sha256 'a05ddaca96b27e6e6293243b596b3aec7649ca351c91dce971756d1e67b6453f'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
