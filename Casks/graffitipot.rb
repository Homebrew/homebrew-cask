cask 'graffitipot' do
  version '1.1'
  sha256 '7232a03fc74bc970078fe0e52e1e72322e7c9ab6605ec6a64ceb27b566007d2f'

  url "http://crystaly.com/graffitipot/GraffitiPot_#{version}.zip"
  name 'GraffitiPot'
  homepage 'http://crystaly.com/graffitipot/'
  license :gratis

  app 'GraffitiPot.app'
end
