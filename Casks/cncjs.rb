cask 'cncjs' do
  version '1.9.15'
  sha256 'd62fc40284a03d4a999b3118b77851e81e4eeab1191eb9997a595a576d5ce689'

  # github.com/cncjs/cncjs was verified as official when first introduced to the cask
  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-mac-x64.dmg"
  appcast 'https://github.com/cncjs/cncjs/releases.atom'
  name 'CNSjs'
  homepage 'https://cnc.js.org/'

  app 'CNCjs.app'
end
