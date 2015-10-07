cask :v1 => 'spriteilluminator' do
  version '1.2.1'
  sha256 'e8e389e300870e7a809cef4955dce4edc66203e6738796dee0341b5558ad2c3a'

  url "https://www.codeandweb.com/download/spriteilluminator/#{version}/SpriteIlluminator-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/SpriteIlluminator/appcast-mac-release.xml',
          :sha256 => 'b551feffcfc35281018d88aa8758028fb251d8b0f8f538c813ca5c639466b501'
  name 'SpriteIlluminator'
  homepage 'https://www.codeandweb.com/spriteilluminator'
  license :commercial

  app 'SpriteIlluminator.app'
end
