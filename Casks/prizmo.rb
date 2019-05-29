cask 'prizmo' do
  version '3.7'
  sha256 'd77cf9bfe7adff4e5bd6de6971f5d81d4dfbf9177c6abed62f71d70408aaada2'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml"
  name 'Prizmo'
  homepage 'https://creaceed.com/prizmo'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
