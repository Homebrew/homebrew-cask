cask 'dcp-o-matic' do
  version '2.12.13'
  sha256 'c48cae7f1ef9e36880c2243c06f016b856a2999f7734bbe0dacc80dead0a4af8'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
