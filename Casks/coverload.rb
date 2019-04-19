cask 'coverload' do
  version '1.2.2-503'
  sha256 '0b6167e30478a024bc479fc53237c0e948c81a4c7347dfe6cac77328e546d164'

  # amazonaws.com/coverloadapp.com was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip"
  name 'CoverLoad'
  homepage 'https://coverloadapp.com/'

  app 'CoverLoad.app'
end
