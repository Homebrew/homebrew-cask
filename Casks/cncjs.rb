cask 'cncjs' do
  version '1.9.15'
  sha256 '2eebe42010c8b1ececa2591eaeacdd343d7b8d07509841d3ad05e0e36f0ba091'

  # github.com/cncjs/cncjs was verified as official when first introduced to the cask
  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-mac-x64.dmg"
  appcast 'https://github.com/cncjs/cncjs/releases.atom'
  name 'CNSjs'
  homepage 'https://cnc.js.org/'

  app 'CNCjs.app'
end
