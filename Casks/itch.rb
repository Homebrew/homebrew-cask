cask 'itch' do
  version '23.6.0'
  sha256 '0a5b9369cc8ac554eca583af56ab2b849b619a9db949081d1063dec3aec1c1be'

  # github.com/itchio/itch was verified as official when first introduced to the cask
  url "https://github.com/itchio/itch/releases/download/v#{version}/itch-mac.dmg"
  appcast 'https://github.com/itchio/itch/releases.atom',
          checkpoint: '287c480e37ff8c26e7ea259eb109c48ba7435b5917b3e0de42be2a2aa970472c'
  name 'itch'
  homepage 'https://itch.io/app'

  app 'itch.app'
end
