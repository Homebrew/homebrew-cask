cask 'remembear' do
  version '0.4.0'
  sha256 '30a6d5d0b682ecd55c3989d8f0984101f9fbd80e3ed566b57fcf26bf153c3d72'

  # amazonaws.com/tunnelbear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/tunnelbear/downloads/mac/remembear/RememBear-#{version}.zip"
  name 'RememBear'
  homepage 'https://www.remembear.com/download/'

  app 'RememBear.app'
end
