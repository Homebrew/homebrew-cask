cask 'dcp-o-matic-player' do
  version '2.14.17'
  sha256 '5a68c965b6024e01cfd3f204a9d93f3272591448493d48122da72959c18d8575'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
