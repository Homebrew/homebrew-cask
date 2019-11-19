cask 'dcp-o-matic-kdm-creator' do
  version '2.14.13'
  sha256 'c52c411dea4975ede0c3364de808bfa2440ed06b2ff21f9abdbdba5751ba3c8f'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
