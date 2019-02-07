cask 'dcp-o-matic' do
  version '2.12.19'
  sha256 '8ce8d7e90b1068540b0e3b97aeb9fe5cdf2b3d0c3ab1645e8124380640a4e68f'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
