cask :v1 => 'spriteilluminator' do
  version '1.2.2'
  sha256 '30b9e2f76e1d37a367c39770412f2673e90983d52321050b5c8c2ee75f8ce79b'

  url "https://www.codeandweb.com/download/spriteilluminator/#{version}/SpriteIlluminator-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/SpriteIlluminator/appcast-mac-release.xml',
          :sha256 => '70c0b956ac4c7c10c0ed2f4db83014b50e454833e3f44002b25cdebcee868d6e'
  name 'SpriteIlluminator'
  homepage 'https://www.codeandweb.com/spriteilluminator'
  license :commercial

  app 'SpriteIlluminator.app'
end
