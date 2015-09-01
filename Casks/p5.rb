cask :v1 => 'p5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '0.5.0'
  sha256 'a78f54f19d750e74119c7bce77ef6b2cae4e6b591d692c149a99b2e7610c7ff2'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/processing/p5.js-editor/releases/download/v#{version}/p5-mac.zip"
  appcast 'https://github.com/processing/p5.js-editor/releases.atom'
  name 'p5.js Editor'
  homepage 'http://p5js.org/download/#editor'
  license :mit

  app 'p5.app'
end
