cask :v1 => 'nw' do
  version '0.12.0'
  sha256 '3ad40bbb1c45c97274343266be017c0f54a1fb95c56adc32e246a43781801b72'

  url "http://dl.nwjs.io/v#{version}/nwjs-v#{version}-osx-x64.zip"
  name 'NW.js'
  homepage 'http://nwjs.io'
  license :mit

  stage_only true
end
