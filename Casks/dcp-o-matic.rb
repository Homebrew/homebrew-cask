cask 'dcp-o-matic' do
  version '2.12.20'
  sha256 '6595fce5c374b9b0a7f743f1e46409e27e0ecb39fb34c972b12168ee0d4cd64b'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
