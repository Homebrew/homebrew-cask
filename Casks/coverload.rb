cask 'coverload' do
  version '1.1.3-212'
  sha256 'de55e6b5334f4e40d0d4b846db2431ef7f3db5c5ffe21e17f54f3ce0d083ea25'

  # amazonaws.com/coverloadapp.com was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip"
  name 'CoverLoad'
  homepage 'https://coverloadapp.com/'

  app 'CoverLoad.app'
end
