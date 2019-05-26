cask 'dcp-o-matic' do
  version '2.14.4'
  sha256 '1f59d5cbd42313e38e6ec25c43ebff30affe1aa08bad03f93a5c9f8e32f77e7f'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
