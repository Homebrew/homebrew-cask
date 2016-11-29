cask 'knockknock' do
  version '1.9.0'
  sha256 '3af57a0689d9a6c28b1cb3a0c9624b832b1d77a17d9af5c2d3df9b05c709072e'

  # bitbucket.org/objective-see was verified as official when first introduced to the cask
  url "https://bitbucket.org/objective-see/deploy/downloads/KnockKnock_#{version}.zip"
  name 'KnockKnock'
  homepage 'https://objective-see.com/products/knockknock.html'

  app 'KnockKnock.app'
end
