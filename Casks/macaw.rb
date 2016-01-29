cask 'macaw' do
  version '1.6'
  sha256 'd9c547da61e4a4755361b2c44f3643d15530e3ae4edb4262a42afbeac0c6380e'

  url "http://download.macaw.co/#{version}/Macaw#{version}.dmg"
  appcast 'http://download.macaw.co/appcast.xml',
          checkpoint: '66f3ff26ff5246ed4d742d9ec02dd02f58044370e2d1238adb15ee0a6f2879db'
  name 'Macaw'
  homepage 'http://macaw.co/'
  license :commercial

  app 'Macaw.app'

  caveats do
    discontinued
  end
end
