cask :v1 => 'spriteilluminator' do
  version '1.2.1'
  sha256 'e8e389e300870e7a809cef4955dce4edc66203e6738796dee0341b5558ad2c3a'

  url "https://www.codeandweb.com/download/spriteilluminator/#{version}/SpriteIlluminator-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/SpriteIlluminator/appcast-mac-release.xml',
          :sha256 => '70c0b956ac4c7c10c0ed2f4db83014b50e454833e3f44002b25cdebcee868d6e'
  name 'SpriteIlluminator'
  homepage 'https://www.codeandweb.com/spriteilluminator'
  license :commercial

  app 'SpriteIlluminator.app'
end
