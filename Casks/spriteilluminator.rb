cask 'spriteilluminator' do
  version '1.4.1'
  sha256 'f170610a2871fbc2c256e54052e679e6f7d23c61c403a2be5a294594bed3a253'

  url "https://www.codeandweb.com/download/spriteilluminator/#{version}/SpriteIlluminator-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/SpriteIlluminator/appcast-mac-release.xml',
          checkpoint: 'e08d170722a688cecb7d4b0b22c93c88c0290dd7e8d1a898323604b5e1587d5a'
  name 'SpriteIlluminator'
  homepage 'https://www.codeandweb.com/spriteilluminator'

  app 'SpriteIlluminator.app'
end
