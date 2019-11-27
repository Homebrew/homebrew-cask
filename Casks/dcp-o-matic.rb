cask 'dcp-o-matic' do
  version '2.14.14'
  sha256 'b4f88cf7589a298fd0f46200da83cff32fb6050c16666b1842ad4c5338eebe9e'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
