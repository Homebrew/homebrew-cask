cask :v1 => 'p5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '0.3.1'
  sha256 'dfad97357afab533427a1f82c12f11cb8f24d283324a615a0226c03a2986910a'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/processing/p5.js-editor/releases/download/v#{version}/p5.zip"
  appcast 'https://github.com/processing/p5.js-editor/releases.atom'
  name 'p5.js Editor'
  homepage 'http://p5js.org/download/#editor'
  license :mit

  app 'p5.app'
end
