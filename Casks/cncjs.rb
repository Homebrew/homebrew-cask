cask 'cncjs' do
  version '1.9.21'
  sha256 'e110bf573a4fc2f2c76d0d97100a2e49a517f889e1d34169bad1cf9b1ccfd452'

  # github.com/cncjs/cncjs was verified as official when first introduced to the cask
  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-mac-x64.dmg"
  appcast 'https://github.com/cncjs/cncjs/releases.atom'
  name 'CNSjs'
  homepage 'https://cnc.js.org/'

  app 'CNCjs.app'
end
