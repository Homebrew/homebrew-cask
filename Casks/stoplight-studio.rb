cask 'stoplight-studio' do
  version '1.8.2'
  sha256 'ded7c821ab4185e6a09e86fe547e407065ee689e5f372a93344dca28a6f5dd99'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
