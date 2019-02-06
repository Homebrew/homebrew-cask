cask 'marvin' do
  version '1.37.1'
  sha256 '4477178dcf313cae20bae9df277d1d682b325b16535be50950c897fd47065d0a'

  # amazingmarvin.s3-website-us-east-1.amazonaws.com was verified as official when first introduced to the cask
  url 'http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg'
  name 'Amazing Marvin'
  homepage 'https://www.amazingmarvin.com/'

  app 'Marvin.app'
end
