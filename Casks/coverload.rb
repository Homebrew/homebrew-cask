cask 'coverload' do
  version '1.1.4-260'
  sha256 '4103939e1c63e769ccffd02c9de93f5691441846cb9397b64c3ab4124322f5eb'

  # amazonaws.com/coverloadapp.com was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/coverloadapp.com/Uploads/CoverLoad-#{version}.zip"
  name 'CoverLoad'
  homepage 'https://coverloadapp.com/'

  app 'CoverLoad.app'
end
