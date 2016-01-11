cask 'spriteilluminator' do
  version '1.2.2'
  sha256 '30b9e2f76e1d37a367c39770412f2673e90983d52321050b5c8c2ee75f8ce79b'

  url "https://www.codeandweb.com/download/spriteilluminator/#{version}/SpriteIlluminator-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/SpriteIlluminator/appcast-mac-release.xml',
          :sha256 => 'd7991de9cad00974ee9f6975a5b1a1c3f08135546f862498cb68ae0aa432d64d'
  name 'SpriteIlluminator'
  homepage 'https://www.codeandweb.com/spriteilluminator'
  license :commercial

  app 'SpriteIlluminator.app'
end
