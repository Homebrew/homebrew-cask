cask 'subsurface' do
  version '4.8.1'
  sha256 '5144e07581350731531173e21053ac5f2fabcf969bfbf5150c08418df5b1c4b5'

  url "https://subsurface-divelog.org/downloads/Subsurface-#{version}.dmg"
  name 'Subsurface'
  homepage 'https://subsurface-divelog.org/'

  app 'Subsurface.app'
end
