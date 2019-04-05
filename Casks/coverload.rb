cask 'coverload' do
  version '1.2.1-420'
  sha256 '903403754aa04590e843c8460881dabb52e1989b1c31bb1a0dc866d8848ec53b'

  # amazonaws.com/coverloadapp.com was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip"
  name 'CoverLoad'
  homepage 'https://coverloadapp.com/'

  app 'CoverLoad.app'
end
