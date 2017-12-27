cask 'alva' do
  version '0.6.0'
  sha256 'bd34da0102a993bb3340634a98341fdfb672a73adc6478b3297161b1db3f80b3'

  # github.com/meetalva/alva was verified as official when first introduced to the cask
  url "https://github.com/meetalva/alva/releases/download/v#{version}/Alva-#{version}-mac.zip"
  appcast 'https://github.com/meetalva/alva/releases.atom',
          checkpoint: 'b3a090d3729da0a8c705b218b1fb66a4204c4afecee300389930b464da96d8e9'
  name 'Alva'
  homepage 'https://meetalva.io/'

  app 'Alva.app'
end
