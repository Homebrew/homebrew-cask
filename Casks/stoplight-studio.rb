cask 'stoplight-studio' do
  version '1.11.0'
  sha256 '250de0327e9a0b889238b32b874ff71e48b1d34a69e98a0879862decf291d034'

  # github.com/stoplightio/studio/ was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/stoplight-studio-mac.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
