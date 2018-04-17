cask 'bezel' do
  version '1.2'
  sha256 'cf9a9fbd2049723675e354fd869607a9f828a38b992d8d45783a6c89772192b9'

  url "http://infinitapps.com/files/Bezel-#{version}.zip"
  appcast 'http://infinitapps.com/files/bezel-appcast.xml',
          checkpoint: '8eeb0218fd54bd3db6ded165be1aa2b50098ffd5d69d90eb47b717317ebe4194'
  name 'bezel'
  homepage 'http://infinitapps.com/bezel/'

  app "Bezel #{version}/Bezel.app"
end
