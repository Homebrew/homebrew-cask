cask 'stoplight-studio' do
  version '1.8.1'
  sha256 '1ba8638645f6fbbcec9a01783e69ee827b09a67e68a60211066b5ddb4de9a869'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
