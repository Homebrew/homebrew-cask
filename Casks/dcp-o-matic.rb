cask 'dcp-o-matic' do
  version '2.14.31'
  sha256 '167c2c9df71b7296ff09b79bf4be4fca76d2eba68088c6143b5c9135e802870d'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
