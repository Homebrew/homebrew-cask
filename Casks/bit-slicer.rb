class BitSlicer < Cask
  version '1.7.3'
  sha256 'be8e7638ef29b2fe85f4dc8d237176887c7de86debdb514ef4160d73597d99e7'

  url "https://bitbucket.org/zorgiepoo/bit-slicer/downloads/Bit%20Slicer%20#{version}.zip"
  appcast 'http://zorg.tejat.net/bitslicer/update.php',
          :sha256 => '89a252d7d8606a2a1929562fe9060999088729a6c602c8742515c2877bf9b29d'
  homepage 'https://github.com/zorgiepoo/bit-slicer/'
  license :oss

  app 'Bit Slicer.app'
end
