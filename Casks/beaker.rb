cask 'beaker' do
  version '1.6-0-gb7c81a9'
  sha256 '9c101935a6a715e9e396c7a8945bef38abf26ebcd5d510ddf70a137aa927f3ac'

  # d299yghl10frh5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-mac.dmg"
  name 'Beaker'
  homepage 'http://beakernotebook.com/'

  app 'Beaker.app'
end
