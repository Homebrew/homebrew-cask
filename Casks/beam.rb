cask 'beam' do
  version '0.5'
  sha256 '6342f7809eac8d72bf5f8cad4968138d4abee76db38e1d790415bb5d2df22a02'

  # beamai.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://beamai.s3.amazonaws.com/app/Beam.zip'
  name 'Beam'
  homepage 'https://beam.ai/'

  app 'Beam.app'
end
