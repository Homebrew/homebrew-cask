cask 'pinegrow-web-designer' do
  version '2.2'
  sha256 'c0d1b9595963b8080298261c4d9744237427e5d2ed02d38d38fbdbcbb43a7f1a'

  # pinegrow.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://pinegrow.s3.amazonaws.com/PinegrowMac.#{version}.dmg"
  name 'Pinegrow Web Designer'
  homepage 'http://pinegrow.com/'
  license :commercial

  app 'Pinegrow Web Designer.app'
end
