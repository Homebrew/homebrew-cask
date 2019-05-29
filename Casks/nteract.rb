cask 'nteract' do
  version '0.14.3'
  sha256 '7f711340d09bce6f8f8e06df6b2787425ecc7a7b2b2e2a7c205207fbd3a714d5'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  auto_updates true

  app 'nteract.app'
end
