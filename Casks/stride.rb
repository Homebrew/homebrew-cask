cask 'stride' do
  version ':latest'
  sha256 '0af358efe5f7016fbefb5f28f8b4c1d9438b5b134b4fc6bd7ce188e7924a4c16'

  # stride-desktop-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://stride-desktop-downloads.s3.amazonaws.com/releases/mac/dmg/64/prod/Stride.dmg'
  name 'Stride'
  homepage 'https://www.stride.com/'

  app 'Stride.app'
end
