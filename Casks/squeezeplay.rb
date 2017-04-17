cask :v1 => 'squeezeplay' do
  version '7.8.0r328'
  sha256 'a0d388bb7f3dcb8aa104c908015fdeaf18263e35318dbebf532e969adbf20e25'

  # binaries are hosted on googlecode.com under the related squeezeslave project
  url "https://squeezeslave.googlecode.com/files/SqueezePlay-#{version}.dmg"
  name 'SqueezePlay'
  # slimdevices.com is the official website host per the vendor homepage
  homepage 'http://wiki.slimdevices.com/index.php/SqueezePlay'
  license :gpl
  tags :vendor => 'Logitech'

  app 'SqueezePlay.app'
  
  zap :delete => '~/Library/Preferences/SqueezePlay'
end
