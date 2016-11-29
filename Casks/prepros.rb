cask 'prepros' do
  version '5.10.2'
  sha256 '45cdd9fb4b30cc2a26cdb211c713ef8c6f9ff3e9636131888ed796ae56262fa8'

  # prepros.io.s3.amazonaws.com was verified as official when first introduced to the cask
  url "http://prepros.io.s3.amazonaws.com/installers/Prepros-Mac-#{version}.zip"
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
