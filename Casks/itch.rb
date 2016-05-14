cask 'itch' do
  version '17.6.0'
  sha256 'f5ec3f4c9c45a4811f11b79962d84c1e12ac0c42458653c68c02051f555c6671'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: 'e2d69aeae8b736debddab73e78dcef0e4af45db40fefbc6bc3881b94dbbf6d87'
  name 'itch'
  homepage 'https://itch.io/app'
  license :mit

  app 'itch.app'
end
