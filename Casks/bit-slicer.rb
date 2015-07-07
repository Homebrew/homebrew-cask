cask :v1 => 'bit-slicer' do
  version '1.7.5'
  sha256 '1180666794b41ddba4895c6f90ba9e428f49c115f0eb260d76061c6c6aa9f1a9'

  # bitbucket.org is the official download host per the vendor homepage
  url "https://bitbucket.org/zorgiepoo/bit-slicer/downloads/Bit%20Slicer%20#{version}.zip"
  name 'Bit Slicer'
  appcast 'https://zgcoder.net/bitslicer/update/appcast.xml',
          :sha256 => '1deab6db866da60ea0c088b1d086039c8363f5c48fcb2bbdea62f52176395c33'
  homepage 'https://github.com/zorgiepoo/bit-slicer/'
  license :bsd

  app 'Bit Slicer.app'
end
