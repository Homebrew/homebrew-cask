cask 'bit-slicer' do
  version '1.7.8'
  sha256 '8e9b9398240f37e7da16c1c7328a1bd8a8a19f7e376c3144304ef51ed587f1b8'

  # zgcoder.net was verified as official when first introduced to the cask
  url "https://zgcoder.net/software/bitslicer/dist/stable/Bit_Slicer_#{version}.zip"
  appcast 'https://zgcoder.net/bitslicer/update/appcast.xml'
  name 'Bit Slicer'
  homepage 'https://github.com/zorgiepoo/bit-slicer/'

  app 'Bit Slicer.app'
end
