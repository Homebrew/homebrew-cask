cask 'printrun' do
  version '18Nov2017'
  sha256 '426229043a2a33a6768dcca12135f0751c007595af078665eb854cf87e4e2999'

  # koti.kapsi.fi/~kliment/printrun was verified as official when first introduced to the cask
  url "http://koti.kapsi.fi/~kliment/printrun/Printrun-Mac-#{version}.zip"
  appcast 'http://koti.kapsi.fi/~kliment/printrun/',
          checkpoint: '8b00c0ea9cbf9040a86eb73fecda80b45397517bfc7fe4377148126a8b989318'
  name 'Printrun'
  homepage 'https://github.com/kliment/Printrun'

  app "Printrun-Mac-#{version}.app"
end
