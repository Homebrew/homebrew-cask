cask 'coverload' do
  version '1.1.5-265'
  sha256 '0a740411953a5c421a14b0397674935dc14ef66bc3de5639838ddde6307cc8a6'

  # amazonaws.com/coverloadapp.com was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip"
  name 'CoverLoad'
  homepage 'https://coverloadapp.com/'

  app 'CoverLoad.app'
end
