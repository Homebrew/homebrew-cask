cask 'dcp-o-matic' do
  version '2.14.15'
  sha256 'cc25ed31cdc01f2610e9a5011616c2fb3433b7daeb572fab5bb22719a5113f2b'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
