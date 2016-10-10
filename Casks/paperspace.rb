cask 'paperspace' do
  version :latest
  sha256 :no_check

  # s3-us-west-1.amazonaws.com/ps-receiver was verified as official when first introduced to the cask
  url 'https://s3-us-west-1.amazonaws.com/ps-receiver/darwin/Paperspace.dmg'
  name 'Paperspace'
  homepage 'https://paperspace.io/'

  app 'Paperspace.app'
end
