cask 'dcp-o-matic' do
  version '2.12.9'
  sha256 '5d877e97c9ea707401772c34c12bf401cc60f2d67dfd872c5b1e9dca7773e863'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
