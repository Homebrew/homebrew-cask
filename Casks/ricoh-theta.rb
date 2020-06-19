cask 'ricoh-theta' do
  version '3.13.3'
  sha256 '6903ff2fa7c38a59c0d5562c51dade624d3e8de6acf908f9bf1df31913e9accf'

  url 'https://theta360-statics.s3.amazonaws.com/app/viewer/RICOH%20THETA.dmg'
  name 'RICOH THETA'
  homepage 'https://theta360.com/'
  appcast 'https://support.theta360.com/en/download/pcmac/'

  app 'RICOH THETA.app'
end
