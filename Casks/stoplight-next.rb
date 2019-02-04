cask 'stoplight-next' do
  version '4.7.0'
  sha256 '24b051c0f0557e745f96c770fa70b3d2bc36505cc888c0fa130e8e9c92173043'

  # github.com/stoplightio/desktop/ was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/desktop/releases/download/v#{version}/stoplight-next-#{version}.dmg"
  appcast 'https://github.com/stoplightio/desktop/releases'
  name 'stoplight'
  homepage 'https://next.stoplight.io/'

  app 'Stoplight Next.app'
end
