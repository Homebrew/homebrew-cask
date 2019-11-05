cask 'stoplight-studio' do
  version '1.4.1'
  sha256 'f5b97a158c48cc136d0ba04589db518c84cc9cefa364eac287e6a9ec59722538'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
