cask 'beaker' do
  version '1.5.1-0-g6e6bdd3'
  sha256 '5ce78888b799b7b39d532b99d63a83301586ede2ccf91b7b2e8fe8ecb1ae7bbf'

  # d299yghl10frh5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-mac.dmg"
  name 'Beaker'
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
