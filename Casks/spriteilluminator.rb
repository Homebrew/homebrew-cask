cask 'spriteilluminator' do
  version '1.3.1'
  sha256 'e51941fbca6c4e9b9f0a347315e69e365b5f63902e1dd4271d4110e748a7f1eb'

  url "https://www.codeandweb.com/download/spriteilluminator/#{version}/SpriteIlluminator-#{version}-uni.dmg"
  appcast 'https://www.codeandweb.com/releases/SpriteIlluminator/appcast-mac-release.xml',
          checkpoint: '997e662cfbe6d4b7e5e3ef5c7eee2bd17c32d91c3ee009949135197fbc8ed67b'
  name 'SpriteIlluminator'
  homepage 'https://www.codeandweb.com/spriteilluminator'

  app 'SpriteIlluminator.app'
end
