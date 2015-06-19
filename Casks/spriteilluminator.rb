cask :v1 => 'spriteilluminator' do
  version '1.0.0'
  sha256 '983017bb7bd27873ad2f09ea64894dc22191478f389def812dceb0ba8b18134e'

  url "https://www.codeandweb.com/download/spriteilluminator/#{version}/SpriteIlluminator-#{version}-uni.dmg"
  name 'SpriteIlluminator'
  homepage 'https://www.codeandweb.com/spriteilluminator'
  license :commercial

  app 'SpriteIlluminator.app'
end
