cask 'dasher' do
  version '2010-06-06'
  sha256 'e17ab0b328f2b456d756e4ab284234d9e398cc4e4a2144d38160d06c6eeaebd0'

  url "http://www.inference.phy.cam.ac.uk/dasher/download/macos/Dasher-MacOS-#{version}.zip"
  name 'Dasher'
  homepage 'http://www.inference.phy.cam.ac.uk/dasher/'

  app 'Dasher.app'

  zap delete: '~/Library/Application Support/Dasher'
end
