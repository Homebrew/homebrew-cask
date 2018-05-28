cask 'spriteilluminator' do
  version '1.5.0'
  sha256 '59f623fc31a7ab4412434d126929c4fecd7f85432562e019476c1cbe8a4c8e2f'

  url "https://www.codeandweb.com/download/spriteilluminator/#{version}/SpriteIlluminator-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/SpriteIlluminator/appcast-mac-release.xml',
          checkpoint: 'e4da8e06aba076ad008fcc65b920c56a8bd2b2a12e3257e0a056664069cfeb0a'
  name 'SpriteIlluminator'
  homepage 'https://www.codeandweb.com/spriteilluminator'

  app 'SpriteIlluminator.app'
end
