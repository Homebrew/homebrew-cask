cask 'paperspace' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://s3-us-west-1.amazonaws.com/ps-receiver/darwin/Paperspace.dmg'
  name 'Paperspace'
  homepage 'https://paperspace.io/'
  license :commercial

  app 'Paperspace.app'
end
