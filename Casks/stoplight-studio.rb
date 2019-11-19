cask 'stoplight-studio' do
  version '1.5.0'
  sha256 '1e5e0b7882b3a78ca65e006d9af01e922f75606d75c7de2c118bc1197e0cde55'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
