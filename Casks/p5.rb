cask 'p5' do
  # note: "5" is not a version number, but an intrinsic part of the product name
  version '0.6.0'
  sha256 '0422a61a0b24a3ba3ac03c89e7b57cf1de58be5cbd9163d673a81882bc1cae58'

  # github.com/processing/p5.js-editor was verified as official when first introduced to the cask
  url "https://github.com/processing/p5.js-editor/releases/download/v#{version}/p5-mac.zip"
  appcast 'https://github.com/processing/p5.js-editor/releases.atom',
          checkpoint: '06236c5ce5c6731b52368f4d7263eff97624f9c102781805daa202a7f3b46a94'
  name 'p5.js Editor'
  homepage 'https://p5js.org/download/#editor'
  license :mit

  app 'p5.app'
end
