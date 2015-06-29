cask :v1 => 'adafruit-arduino' do
  version '1.0.5'
  sha256 'de1c64233c8a2c6b039f9eddd4c417e594afee51558cd9f2f335a831580e2d42'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://adafruit-download.s3.amazonaws.com/Adafruit%20Arduino%20#{version}%20-%20Mac%2011-8-13.zip"
  name 'Adafruit Arduino'
  homepage 'https://adafruit.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "Adafruit Arduino #{version}.app"
end
