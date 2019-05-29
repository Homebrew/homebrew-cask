cask 'dcp-o-matic' do
  version '2.14.7'
  sha256 'aafdf9a56eb5a756308e81a36d7e0a1a25c16a0dad7f39b66af13d33e17ea0d5'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
