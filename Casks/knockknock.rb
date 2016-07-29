cask 'knockknock' do
  version '1.8.0'
  sha256 'e9639d5782da6bc8796815fe57bbb7a5598b15cc7725db1a84b88b8cb47f44b8'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/KnockKnock_#{version}.zip"
  name 'KnockKnock'
  homepage 'https://objective-see.com/products/knockknock.html'
  license :gratis

  app 'KnockKnock.app'
end
