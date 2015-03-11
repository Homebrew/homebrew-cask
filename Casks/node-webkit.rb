cask :v1 => 'node-webkit' do
  # node-webkit is renamed NW.js
  version '0.12.0'
  sha256 '3ad40bbb1c45c97274343266be017c0f54a1fb95c56adc32e246a43781801b72'

  # set new homepage, leave github address as a reference
  # homepage 'https://github.com/rogerwang/node-webkit', 'https://github.com/nwjs/nw.js'
  name 'NW.js'
  url "http://dl.nwjs.io/v#{version}/nwjs-v#{version}-osx-x64.zip"
  homepage 'http://nwjs.io'
  license :mit

  stage_only true
end
