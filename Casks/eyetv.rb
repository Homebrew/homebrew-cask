cask 'eyetv' do
  version '3.6.9_7416'
  sha256 '96d287b9f1fb5b3341105dd9f9e4cafbed2daf148133ee6b2d1c0cdd0c2ff258'

  # d2ax8v8radog32.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2ax8v8radog32.cloudfront.net/eyetv3/Geniatech_eyetv_#{version}.dmg"
  appcast 'https://www.geniatech.eu/eyetv/support/eyetv-3-en/',
          checkpoint: 'ef1c78c583f29d38cf45d6a6de8f829c7f39339bbdca97c22c7e4cecbada06bf'
  name 'EyeTV'
  homepage 'https://www.geniatech.eu/eyetv/'

  app 'EyeTV.app'
end
