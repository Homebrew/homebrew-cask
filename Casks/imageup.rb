cask :v1 => 'imageup' do
  version '0.7.3'
  sha256 'ff845d526f2e99e0802e529a5934907df58c02d2a0d8a24baabdc0ae2a7adc9e'

  url 'http://download.cockscomb.info/software/imageup/ImageUp.zip'
  name 'ImageUp'
  homepage 'http://software.cockscomb.info/imageup/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ImageUp.app'
end
