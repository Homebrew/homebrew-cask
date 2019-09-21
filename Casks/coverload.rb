cask 'coverload' do
  version '2.0.0-685'
  sha256 '604461343b12f2bcda6ba18834d44981545d4b2935eef13cb0afbd70a6d2a465'

  # s3-us-west-2.amazonaws.com/coverloadapp.com was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip"
  name 'CoverLoad'
  homepage 'https://coverloadapp.com/'

  app 'CoverLoad.app'
end
