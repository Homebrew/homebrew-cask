cask 'itch' do
  version '25.0.0'
  sha256 '8dc76228c8e5e75da5e3c4b32a709762d339d5766fcb7c3a74eca3a75728fa10'

  # nuts.itch.zone was verified as official when first introduced to the cask
  url 'http://nuts.itch.zone/download/osx'
  appcast 'https://github.com/itchio/itch/releases.atom'
  name 'itch'
  homepage 'https://itch.io/app'

  installer manual: 'Install itch.app'

  uninstall delete: '~/Applications/itch.app'
end
