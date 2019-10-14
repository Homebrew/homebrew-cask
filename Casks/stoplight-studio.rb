cask 'stoplight-studio' do
  version '1.1.5'
  sha256 '335c8ee0fdccae679a502d5e69382d957e735079186057f4d49c3473d756df15'

  # github.com/stoplightio/studio was verified as official when first introduced to the cask
  url "https://github.com/stoplightio/studio/releases/download/v#{version}/Stoplight-Studio-#{version}.dmg"
  appcast 'https://github.com/stoplightio/studio/releases.atom'
  name 'Stoplight Studio'
  homepage 'https://stoplight.io/studio/'

  app 'Stoplight Studio.app'
end
