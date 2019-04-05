cask 'cncjs' do
  version '1.9.18'
  sha256 '6b4fe786e04e2eb46c498efba8d9a320f4401b24b6687ef0fa1b9c2b45d19efb'

  # github.com/cncjs/cncjs was verified as official when first introduced to the cask
  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-mac-x64.dmg"
  appcast 'https://github.com/cncjs/cncjs/releases.atom'
  name 'CNSjs'
  homepage 'https://cnc.js.org/'

  app 'CNCjs.app'
end
