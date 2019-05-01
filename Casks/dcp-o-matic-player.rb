cask 'dcp-o-matic-player' do
  version '2.14.0'
  sha256 '10182cdecde04568a6a53c43359ac5b2f149fbec5e94d5349f6f57936af89ab0'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
