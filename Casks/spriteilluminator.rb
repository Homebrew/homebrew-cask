cask 'spriteilluminator' do
  version '1.3.0'
  sha256 'f8eb5acc5abc7ecc5edcfc795f1018bf1ca974360f4dfa814cc829a036596f77'

  url "https://www.codeandweb.com/download/spriteilluminator/#{version}/SpriteIlluminator-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/SpriteIlluminator/appcast-mac-release.xml',
          checkpoint: 'b295ea112a460f8f2217d40710412ba10b9756eae2d2579f39990949a982f0cf'
  name 'SpriteIlluminator'
  homepage 'https://www.codeandweb.com/spriteilluminator'

  app 'SpriteIlluminator.app'
end
