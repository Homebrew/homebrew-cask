cask 'cloudapp' do
  version '4.0.0'
  sha256 'c6691d553a4e16cebb68615e34bbf4413b8d71449ec862fa9c5f19026d573632'

  # s3.amazonaws.com/downloads.getcloudapp.com was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-4.0.0.dmg'
  name 'CloudApp'
  homepage 'https://www.getcloudapp.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CloudApp.app'
end
