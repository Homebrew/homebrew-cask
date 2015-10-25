cask :v1 => 'automatic' do
  version '2.4.7.392'
  sha256 'b1d4b7b4a85eb81010b5863b439b978179f49c1c5d6522e481106bf93fbea94f'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://com-codingcurious-downloads.s3.amazonaws.com/Automatic.#{version}.zip"
  appcast 'http://update.codingcurious.com/automatic/appcast2.xml',
          :sha256 => '8267eef79de744bb9f0075524c4cab6f3f83e0b0c6ced213131e632e37b34984'
  name 'Automatic'
  homepage 'http://codingcurious.com/automatic/'
  license :commercial

  prefpane 'Automatic.prefPane'
end
