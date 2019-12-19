cask 'dcp-o-matic' do
  version '2.14.18'
  sha256 'e0ec579844f74d0d66f6a02b5bd9dbf7d7788663a460ae4fb777ccdd1ebfc888'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
