cask 'bit-slicer' do
  version '1.7.6'
  sha256 '03e9125481bd4c6459e379b3b0df69a2eecbde80f7cb11d9be8dfc9c0f8d3a58'

  # zgcoder.net was verified as official when first introduced to the cask
  url "https://zgcoder.net/software/bitslicer/dist/stable/Bit_Slicer_#{version}.zip"
  appcast 'https://zgcoder.net/bitslicer/update/appcast.xml',
          checkpoint: '98f4404442be353240a8e8f1c6172d008119e9d0ab1987cd973e9ebec3480bfa'
  name 'Bit Slicer'
  homepage 'https://github.com/zorgiepoo/bit-slicer/'
  license :bsd

  app 'Bit Slicer.app'
end
