cask 'stoplight-studio' do
  version '1.6.2'
  sha256 'b07010e3a42000ba4c8a6f55241a386cc94844a01c5e0db890268c9cc40ad5b2'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
