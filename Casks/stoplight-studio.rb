cask 'stoplight-studio' do
  version '1.9.2'
  sha256 '4b52b85228f81b49c6bf4804ca9b17e78ce9440f7e4156aa339ed3aa17a9a966'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
