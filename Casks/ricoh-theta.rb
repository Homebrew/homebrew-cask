cask 'ricoh-theta' do
  version '3.13.3'
  sha256 '6903ff2fa7c38a59c0d5562c51dade624d3e8de6acf908f9bf1df31913e9accf'

  # theta360-statics.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://theta360-statics.s3.amazonaws.com/app/viewer/RICOH%20THETA.dmg'
  appcast 'https://support.theta360.com/en/download/pcmac/'
  name 'RICOH THETA'
  homepage 'https://theta360.com/'

  app 'RICOH THETA.app'
end
