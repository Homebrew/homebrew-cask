cask 'strongdm' do
  version '1.4.11'
  sha256 '6bc413ae69db4d1ed54ae7393ec8cf2af66c5812b2cc387f7884fe34825bf6ce'

  # sdm-releases-production.s3.amazonaws.com/stable/darwin was verified as official when first introduced to the cask
  url 'https://sdm-releases-production.s3.amazonaws.com/stable/darwin/1.4.11/6D62E3F917774B61BF648A76AAE5CCA1DDD31E23/SDM-1.4.11.dmg'
  name 'StrongDM'
  homepage 'https://strongdm.com/'

  app 'SDM.app'
end
