cask 'spriteilluminator' do
  version '1.2.2'
  sha256 '30b9e2f76e1d37a367c39770412f2673e90983d52321050b5c8c2ee75f8ce79b'

  url "https://www.codeandweb.com/download/spriteilluminator/#{version}/SpriteIlluminator-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/SpriteIlluminator/appcast-mac-release.xml',
          checkpoint: '8a655c139e0e76edde647199782db24101efd8f36ebe2a7e44fa02434ab7b4b3'
  name 'SpriteIlluminator'
  homepage 'https://www.codeandweb.com/spriteilluminator'
  license :commercial

  app 'SpriteIlluminator.app'
end
