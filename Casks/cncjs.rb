cask 'cncjs' do
  version '1.9.17'
  sha256 'd673a171e4ccc953deb2cd4a81328186c0006e32faf35f36cbe2d77c3b7d9779'

  # github.com/cncjs/cncjs was verified as official when first introduced to the cask
  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-mac-x64.dmg"
  appcast 'https://github.com/cncjs/cncjs/releases.atom'
  name 'CNSjs'
  homepage 'https://cnc.js.org/'

  app 'CNCjs.app'
end
