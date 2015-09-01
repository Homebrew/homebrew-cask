cask :v1 => 'imageup' do
  homepage 'http://software.cockscomb.info/imageup/'
  version '0.7.3'
  url "http://download.cockscomb.info/software/imageup/ImageUp.zip"
  sha256 'ff845d526f2e99e0802e529a5934907df58c02d2a0d8a24baabdc0ae2a7adc9e'
  license :unknown
  app 'ImageUp.app'
  caveats <<-EOS.undent
    ImageUp:
    - Display the "input source" anywhere
    - version 0.7.3 is observed to work on MacOSX 10.10
    - 32-bit application
  EOS
end
