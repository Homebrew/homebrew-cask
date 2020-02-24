cask 'cncjs' do
  version '1.9.20'
  sha256 'f66d17573d4f99587dca48c12d24f35b79047c0e9a5fa0b3762f55ffe1dc9160'

  # github.com/cncjs/cncjs was verified as official when first introduced to the cask
  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-mac-x64.dmg"
  appcast 'https://github.com/cncjs/cncjs/releases.atom'
  name 'CNSjs'
  homepage 'https://cnc.js.org/'

  app 'CNCjs.app'
end
