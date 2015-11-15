cask :v1 => 'knockknock' do
  version  :latest
  sha256   'd99bb2a312e76a17a60656f9d45f32069a480e7b0a25029bcbc0cd58e04a6e29'
  url      'https://bitbucket.org/objective-see/deploy/downloads/KnockKnock_1.6.1.zip'

  name     'KnockKnock'
  homepage 'https://objective-see.com/products/knockknock.html'
  license  :gratis

  app 'KnockKnock.app'
end
