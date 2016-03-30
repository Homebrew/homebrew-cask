cask 'p5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '0.5.10'
  sha256 '52d7abe71a9613c9ef694adeede7a0a9dfa78ff0a11602783fe0187c476bc25b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/processing/p5.js-editor/releases/download/v#{version}/p5-mac.zip"
  appcast 'https://github.com/processing/p5.js-editor/releases.atom',
          checkpoint: '15242dba0ba4ed40a22e23cdfc0b93d64781d229fcb05b0f2517aa2ef97588f3'
  name 'p5.js Editor'
  homepage 'http://p5js.org/download/#editor'
  license :mit

  app 'p5.app'
end
