cask 'dcp-o-matic' do
  version '2.14.5'
  sha256 'a7806a78377129659f714192e63f7c340fa548fd29054b00bd4cec3078e4b58d'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
