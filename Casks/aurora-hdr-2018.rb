cask 'aurora-hdr-2018' do
  version :latest
  sha256 :no_check

  # aurorahdr2018.s3-accelerate.amazonaws.com was verified as official when first introduced to the cask
  url 'https://aurorahdr2018.s3-accelerate.amazonaws.com/Aurora_HDR_2018.dmg'
  name 'Aurora HDR 2018'
  homepage 'https://skylum.com/aurorahdr'

  app 'Aurora HDR 2018.app'
end
