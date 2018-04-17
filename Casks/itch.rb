cask 'itch' do
  version '23.6.1'
  sha256 '97b639ece01a74b6c1e0d3517623b79f5734aaf3c448dbb9cf2540a6bcb2ebdb'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: '9dcccac9a6abd8234de24bf75d3ab43a8ed7b49f910bf35ca09ad4e65a98bf27'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
