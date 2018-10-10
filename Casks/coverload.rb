cask 'coverload' do
  version '1.2.0-353'
  sha256 '0f9c39af1049963ff3faf34ed4d0a58b8745287b2489b20fb4d8312b126a444b'

  # amazonaws.com/coverloadapp.com was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip"
  name 'CoverLoad'
  homepage 'https://coverloadapp.com/'

  app 'CoverLoad.app'
end
