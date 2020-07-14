cask 'stoplight-studio' do
  version '1.13.1'
  sha256 'deed531f1c1798b42ebb308ccb59c67e0d5a3329a1b036e040d1306c5f6fa76f'

  # github.com/stoplightio/studio/ was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
