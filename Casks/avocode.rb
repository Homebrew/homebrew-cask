cask 'avocode' do
  version '2.4.3'
  sha256 '6f53e78a5fa60a80e103168fce8e3aca22013d20369f2d42b8155aee560d1b0b'

  url "http://mediacdn.avocode.com/download/avocode-app/#{version}/avocode-app-mac-#{version}.zip"
  name 'Avocode'
  homepage 'http://avocode.com/'
  license :commercial

  app 'Avocode.app'
end
