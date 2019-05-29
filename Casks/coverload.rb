cask 'coverload' do
  version '1.2.4-535'
  sha256 '854c3d128fe911fb4e5fff9046392cd6567518ffa494a87a1a92add98a059c78'

  # amazonaws.com/coverloadapp.com was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip"
  name 'CoverLoad'
  homepage 'https://coverloadapp.com/'

  app 'CoverLoad.app'
end
