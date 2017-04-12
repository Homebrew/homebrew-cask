cask 'spriteilluminator' do
  version '1.4.0'
  sha256 '111d8df09a4fe622be8f0478ed2cb1f45dc2b31cf3d2c99510cfcfe6a2e1123c'

  url "https://www.codeandweb.com/download/spriteilluminator/#{version}/SpriteIlluminator-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/SpriteIlluminator/appcast-mac-release.xml',
          checkpoint: '7a3684dfc6d725649c818593de6e825476f1a1091518a47d59622a87ee2aac2d'
  name 'SpriteIlluminator'
  homepage 'https://www.codeandweb.com/spriteilluminator'

  app 'SpriteIlluminator.app'
end
