cask 'strongdm' do
  version '0.4.14'
  sha256 '2bc8f04aa632e3816dfabeffa16b9ea77f677a295e26951a4de9254d253dfca6'

  # sdm-releases-production.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://sdm-releases-production.s3.amazonaws.com/nightly/darwin/SDM-#{version}.dmg"
  name 'strongDM GUI'
  homepage 'https://strongdm.com/'

  app 'SDM.app'
end
