cask 'knockknock' do
  version '1.7.1'
  sha256 'ff15f02d4b1a4f5fc53dfe2cb3be6e548362d943d9b6336eb6b549e6a87dd873'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/KnockKnock_#{version}.zip"
  name 'KnockKnock'
  homepage 'https://objective-see.com/products/knockknock.html'
  license :gratis

  app 'KnockKnock.app'
end
