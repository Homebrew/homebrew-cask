cask 'stoplight-studio' do
  version '1.7.2'
  sha256 'da1cd9d8b6e3a478d9e3f2034e6767fa2e1ac8f54d74e9951627ba09e003ac82'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
