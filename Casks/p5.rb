cask 'p5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '0.5.7'
  sha256 'f46942ea6939384634d83172fe6544f243d24aebe0a289d5402853f3dba10d64'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/processing/p5.js-editor/releases/download/v#{version}/p5-mac.zip"
  appcast 'https://github.com/processing/p5.js-editor/releases.atom',
          checkpoint: '9ec215c82722e0470865bf511903c73f81882894a4bc59a6026520f665ef4a2a'
  name 'p5.js Editor'
  homepage 'http://p5js.org/download/#editor'
  license :mit

  app 'p5.app'
end
