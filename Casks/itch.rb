cask 'itch' do
  version '23.2.1'
  sha256 'c8084a059c07b51e2e61b37f8b9827e441c4732cf8542fa964efea4e3a57a849'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: '37aadbc92c1f8f8f4503759660a53dcec1337d759e3ddb4964bf3e35e1fc7a25'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
