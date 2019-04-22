cask 'cncjs' do
  version '1.9.19'
  sha256 '4a6f4a5c688a2440b4bb86b1c75e112a6e2d3c9c01353e47bd6b3fa015c3e8ff'

  # github.com/cncjs/cncjs was verified as official when first introduced to the cask
  url "https://github.com/cncjs/cncjs/releases/download/v#{version}/cncjs-app-#{version}-mac-x64.dmg"
  appcast 'https://github.com/cncjs/cncjs/releases.atom'
  name 'CNSjs'
  homepage 'https://cnc.js.org/'

  app 'CNCjs.app'
end
