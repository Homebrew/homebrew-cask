cask 'dcp-o-matic-player' do
  version '2.14.5'
  sha256 'cf0fc1cce589b8610287c192fd5579ba648ab3c9f8a004d2b52364ca20136e81'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
