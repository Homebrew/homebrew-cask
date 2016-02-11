cask 'adafruit-arduino' do
  version '1.6.3'
  sha256 'c964acbe728b616f0595517b21bbf97c88b8ee92379c06943a2862399d0196e2'

  # amazonaws.com/adafruit-download was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/adafruit-download/adafruit-arduino-#{version}-macosx.zip"
  name 'Adafruit Arduino'
  homepage 'https://adafruit.com'
  license :gpl

  conflicts_with cask: 'arduino'

  app 'Arduino.app'
end
