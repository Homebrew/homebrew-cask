cask 'stoplight-studio' do
  version '1.4.0'
  sha256 '2121f4f71930ae97b9a49d73cf53f6e6db3afa129d8f7408cc800a44b10693f7'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
