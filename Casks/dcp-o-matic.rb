cask 'dcp-o-matic' do
  version '2.14.32'
  sha256 'ca9d312ef4f72ec7a8cad6253e654408c71faae1a5dd911445043b644b08d950'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
