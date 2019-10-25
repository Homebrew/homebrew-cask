cask 'stoplight-studio' do
  version '1.3.0'
  sha256 '09e31311112c397dad26ad2045cfca8d9350b0c2a11ab8355e9520a6aaf69bc7'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/Stoplight-Studio-#{version}.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
