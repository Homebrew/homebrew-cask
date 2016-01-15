cask 'bit-slicer' do
  version '1.7.6'
  sha256 '03e9125481bd4c6459e379b3b0df69a2eecbde80f7cb11d9be8dfc9c0f8d3a58'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/zorgiepoo/bit-slicer/downloads/Bit%20Slicer%20#{version}.zip"
  appcast 'https://zgcoder.net/bitslicer/update/appcast.xml',
          :checkpoint => '98f4404442be353240a8e8f1c6172d008119e9d0ab1987cd973e9ebec3480bfa'
  name 'Bit Slicer'
  homepage 'https://github.com/zorgiepoo/bit-slicer/'
  license :bsd

  app 'Bit Slicer.app'
end
