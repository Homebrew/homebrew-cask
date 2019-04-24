cask 'coverload' do
  version '1.2.3-505'
  sha256 'a6028ca94789df6d18f7f296c04413c542e57237d27fac6061a5c43018e48847'

  # amazonaws.com/coverloadapp.com was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip"
  name 'CoverLoad'
  homepage 'https://coverloadapp.com/'

  app 'CoverLoad.app'
end
