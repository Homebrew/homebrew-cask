cask 'beekeeper-studio' do
  version '1.1.2'
  sha256 '5850f254c5506ec65d39737200a1409c1e670c2a1644e7b1d72deaacf4d90f06'

  # github.com/beekeeper-studio/beekeeper-studio was verified as official when first introduced to the cask
  url "https://github.com/beekeeper-studio/beekeeper-studio/releases/download/v#{version}/Beekeeper-Studio-#{version}.dmg"
  appcast 'https://github.com/beekeeper-studio/beekeeper-studio/releases.atom'
  name 'Beekeeper Studio'
  homepage 'https://www.beekeeperstudio.io/'

  auto_updates true

  app 'Beekeeper Studio.app'
end
