cask :v1 => 'macaw' do
  version '1.5.8'
  sha256 '9c4350f6035823407a45c0ef465c10ff7bb8ec831ace69d2febc234babfc7a2a'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml',
          :sha256 => '33dff9f8acedaf8d8213e5d88b18219fc2686f38d32b42dae6a55ace3dc917ad'
  homepage 'http://macaw.co/'
  license :unknown

  app 'Macaw.app'
end
