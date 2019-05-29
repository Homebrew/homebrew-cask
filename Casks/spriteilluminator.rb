cask 'spriteilluminator' do
  version '1.5.3'
  sha256 'ef6014cecc5911279669171efe2bbfa226fa0aaacf8a6804701f92d7c6ff8638'

  url "https://www.codeandweb.com/download/spriteilluminator/#{version}/SpriteIlluminator-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/SpriteIlluminator/appcast-mac-release.xml'
  name 'SpriteIlluminator'
  homepage 'https://www.codeandweb.com/spriteilluminator'

  app 'SpriteIlluminator.app'
end
