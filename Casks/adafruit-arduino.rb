cask :v1 => 'adafruit-arduino' do
  version '1.6.3'
  sha256 'c964acbe728b616f0595517b21bbf97c88b8ee92379c06943a2862399d0196e2'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/adafruit-download/adafruit-arduino-#{version}-macosx.zip"
  name 'Adafruit Arduino'
  homepage 'https://adafruit.com'
  license :gpl

  app 'Arduino.app'

  conflicts_with :cask => 'arduino'
end
