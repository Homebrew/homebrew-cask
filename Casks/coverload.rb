cask 'coverload' do
  version '1.1.6-285'
  sha256 '966ab4e7afc59cb26b4d7eef37465f3d4a1a15c4200a35cf1ba7bd82cd61eada'

  # amazonaws.com/coverloadapp.com was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip"
  name 'CoverLoad'
  homepage 'https://coverloadapp.com/'

  app 'CoverLoad.app'
end
