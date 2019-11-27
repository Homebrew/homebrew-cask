cask 'stoplight-studio' do
  version '1.6.1'
  sha256 'a8ca9232d07841c789efeede39772c15ad696f0d8eefe902abf0af4c8609951e'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
