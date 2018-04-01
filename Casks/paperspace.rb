cask 'paperspace' do
  version '5.4.0.20'
  sha256 '6931d734fbee3ba7e8812d0cd57a7721674ba946d8d0f7429ee8cb64ead6e72d'

  # s3-us-west-1.amazonaws.com/ps-receiver was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/ps-receiver/darwin/Paperspace-#{version}.dmg"
  name 'Paperspace'
  homepage 'https://www.paperspace.com/'

  app 'Paperspace.app'
end
