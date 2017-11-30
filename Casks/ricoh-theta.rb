cask 'ricoh-theta' do
  version :latest
  sha256 :no_check

  # theta360-statics.s3.amazonaws.com/app/viewer was verified as official when first introduced to the cask
  url 'https://theta360-statics.s3.amazonaws.com/app/viewer/RICOH%20THETA.dmg'
  name 'RICOH THETA'
  homepage 'https://theta360.com/en/support/download/pcmac/'

  app 'RICOH THETA.app'
end
