cask :v1 => 'pi-filler' do
  version '1.1.1'
  sha256 '566eb386dd48993bceb6d170f563adb1ff45342e42044023161631e7b17e25cb'

  url 'http://ivanx.com/raspberrypi/files/PiFiller.zip'
  name 'Pi Filler'
  homepage 'http://ivanx.com/raspberrypi'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pi Filler.app'
end
