cask 'dcp-o-matic' do
  version '2.14.21'
  sha256 '73a848cecabed86f9869eeb87c8274381e9a08e7fd5401e7f940ef5e707759a3'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
