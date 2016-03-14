cask 'spriteilluminator' do
  version '1.2.2'
  sha256 '30b9e2f76e1d37a367c39770412f2673e90983d52321050b5c8c2ee75f8ce79b'

  url "https://www.codeandweb.com/download/spriteilluminator/#{version}/SpriteIlluminator-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/SpriteIlluminator/appcast-mac-release.xml',
          checkpoint: '6eecc1343d3aebcd37e00cb8ea5954c0830e0959d6c542a45abf124b9533396b'
  name 'SpriteIlluminator'
  homepage 'https://www.codeandweb.com/spriteilluminator'
  license :commercial

  app 'SpriteIlluminator.app'
end
