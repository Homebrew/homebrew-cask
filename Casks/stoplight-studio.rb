cask 'stoplight-studio' do
  version '1.8.0'
  sha256 'a2569489c6db40091cea81dbd13b72453d1cc5325f823385d89d65cb136b4b77'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
