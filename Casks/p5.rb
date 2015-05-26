cask :v1 => 'p5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '0.1.8'
  sha256 '3a46a98995b43e792d7e7f7407aba1503084cf37339064711abcfad54dd5c094'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/processing/p5.js-editor/releases/download/v#{version}/p5.zip"
  appcast 'https://github.com/processing/p5.js-editor/releases.atom'
  name 'p5.js Editor'
  homepage 'http://p5js.org/download/#editor'
  license :mit

  app 'p5.app'
end
