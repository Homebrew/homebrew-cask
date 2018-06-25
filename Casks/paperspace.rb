cask 'paperspace' do
  version '6.2.0.11'
  sha256 'a855b9c3ccfabb58a4eabdfc091c8c8d09ab47eea27f56989bddfbedb0d76001'

  # s3-us-west-1.amazonaws.com/ps-receiver was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/ps-receiver/darwin/Paperspace-#{version}.dmg"
  name 'Paperspace'
  homepage 'https://www.paperspace.com/'

  app 'Paperspace.app'
end
