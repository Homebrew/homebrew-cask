cask :v1 => 'p5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '0.3.2'
  sha256 'f39200b46b1ba5ee920bdabbb1b0529001bc4242c9b0348708869ecdaff71e02'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/processing/p5.js-editor/releases/download/v#{version}/p5.zip"
  appcast 'https://github.com/processing/p5.js-editor/releases.atom'
  name 'p5.js Editor'
  homepage 'http://p5js.org/download/#editor'
  license :mit

  app 'p5.app'
end
