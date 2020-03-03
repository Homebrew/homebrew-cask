cask 'stoplight-studio' do
  version '1.10.0'
  sha256 '7910d54d2dca7cc466930ef21fb6a5e4d8dda6a39ad970ee5ac896a4de59fa30'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
