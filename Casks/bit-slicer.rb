cask 'bit-slicer' do
  version '1.7.7'
  sha256 '2d99481186552c05ad3f3c53226c5a5193af1b96f28702794d940a74f1be4802'

  # zgcoder.net was verified as official when first introduced to the cask
  url "https://zgcoder.net/software/bitslicer/dist/stable/Bit_Slicer_#{version}.zip"
  appcast 'https://zgcoder.net/bitslicer/update/appcast.xml',
          checkpoint: '71d3b5ac6366b2ea61bb2e2ab2815fad8dbc335e9c2eb040f1445785623365c3'
  name 'Bit Slicer'
  homepage 'https://github.com/zorgiepoo/bit-slicer/'

  app 'Bit Slicer.app'
end
