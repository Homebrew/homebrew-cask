cask 'itch' do
  version '23.4.2'
  sha256 'd03e397b39daeb74e1c6a662a0bd36a313b99aaf2dfcad2264a9914811841592'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: '308058a0ad55d689496158676c83432c7182cadfcb10b0cab8768e457fb126e7'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
