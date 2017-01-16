cask 'eyetv' do
  version '3.6.9_7416'
  sha256 '96d287b9f1fb5b3341105dd9f9e4cafbed2daf148133ee6b2d1c0cdd0c2ff258'

  # d2ax8v8radog32.cloudfront.net was verified as official when first introduced to the cask
  url "http://d2ax8v8radog32.cloudfront.net/eyetv3/Geniatech_eyetv_#{version}.dmg"
  appcast 'https://www.geniatech.eu/eyetv/support/eyetv-3-en/',
          checkpoint: '3373d6a4a51b55666aa199aea5dc7e12f4d562bb6152c6a5cc276359b43b5add'
  name 'EyeTV'
  homepage 'https://www.geniatech.eu/eyetv/'

  app 'EyeTV.app'
end
