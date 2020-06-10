cask 'dcp-o-matic' do
  version '2.14.33'
  sha256 '5fee8351980b3c4f7557e397824ed4db8ab903ac1262541d1f10a9716df66940'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
