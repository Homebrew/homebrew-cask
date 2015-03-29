cask :v1 => 'bit-slicer' do
  version '1.7.5'
  sha256 '1180666794b41ddba4895c6f90ba9e428f49c115f0eb260d76061c6c6aa9f1a9'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/zorgiepoo/bit-slicer/downloads/Bit%20Slicer%20#{version}.zip"
  name 'Bit Slicer'
  appcast 'http://zorg.tejat.net/bitslicer/update.php',
          :sha256 => 'ad8cdd11fb138f98a29bf24a31d3f82f086e6abf813787f91679ce5ec015239c'
  homepage 'https://github.com/zorgiepoo/bit-slicer/'
  license :bsd

  app 'Bit Slicer.app'
end
