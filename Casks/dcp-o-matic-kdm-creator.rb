cask 'dcp-o-matic-kdm-creator' do
  version '2.12.10'
  sha256 '4e7c73667178f999b0531d2bbcca3239cc90b13c83a7d0d1ca023d2921f3ee41'

  url "https://dcpomatic.com/dl.php?id=osx-kdm&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic KDM Creator'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} KDM Creator.app"
end
