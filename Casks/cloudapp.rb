cask 'cloudapp' do
  version '4.2.1'
  sha256 '41e6ceb4d5b861a952cba834b1cc9234bd423519eb0f34e188b9a581b0fe65a7'

  # s3.amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-4.2.1.zip'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com/'

  app 'CloudApp.app'
end
