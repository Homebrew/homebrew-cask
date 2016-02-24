cask 'brave' do
  version '0.7.15dev'
  sha256 '55c938c8021d151ad62ba2951e04fca45ac6d756ecd1a5fcbc936bcf790bdeac'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '8bcbb3060182bab81e4a0af40d49b1c6a6810bae024c31ff2521b955e3bce21c'
  name 'Brave'
  homepage 'http://brave.com'
  license :mpl

  app 'Brave.app'
end
