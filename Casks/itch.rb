cask 'itch' do
  version '22.0.0'
  sha256 '24c712f0e745d15439cfe4fe63af95f18af8bea5d8f6f4fb8b1431af44fc363d'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: '0c9ddb4b7dae961ddf3ad7ab75ff16c6b91a4ed215a9170bcd2fffb843ef997a'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
