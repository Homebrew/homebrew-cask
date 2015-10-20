cask :v1 => 'bit-slicer' do
  version '1.7.6'
  sha256 '03e9125481bd4c6459e379b3b0df69a2eecbde80f7cb11d9be8dfc9c0f8d3a58'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/zorgiepoo/bit-slicer/downloads/Bit%20Slicer%20#{version}.zip"
  name 'Bit Slicer'
  appcast 'https://zgcoder.net/bitslicer/update/appcast.xml',
          :sha256 => '3012f7d3d8b49f6d595d62e07f87525c0a225a59d44576ba46f0c67518fdf019'
  homepage 'https://github.com/zorgiepoo/bit-slicer/'
  license :bsd

  app 'Bit Slicer.app'
end
