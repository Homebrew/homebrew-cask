cask :v1 => 'adafruit-arduino' do
  version '1.0.5'
  sha256 'de1c64233c8a2c6b039f9eddd4c417e594afee51558cd9f2f335a831580e2d42'

  url "http://adafruit-download.s3.amazonaws.com/Adafruit%20Arduino%20#{version}%20-%20Mac%2011-8-13.zip"
  homepage 'http://adafruit.com'
  license :unknown    # todo: improve this machine-generated value

  app "Adafruit Arduino #{version}.app"
end
