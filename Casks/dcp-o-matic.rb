cask 'dcp-o-matic' do
  version '2.14.10'
  sha256 '7f1c30ef73936c2f1448767b346fe5f51893bc383f73fabb134acaa500b695f1'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
