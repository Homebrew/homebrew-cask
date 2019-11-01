cask 'dcp-o-matic' do
  version '2.14.13'
  sha256 '3de276edcf09cff65b3708e3cd57d52b8bf3d2d4da3dcb823907636349b28393'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
