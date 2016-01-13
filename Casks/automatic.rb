cask 'automatic' do
  version '2.4.7.392'
  sha256 'b1d4b7b4a85eb81010b5863b439b978179f49c1c5d6522e481106bf93fbea94f'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://com-codingcurious-downloads.s3.amazonaws.com/Automatic.#{version}.zip"
  appcast 'http://update.codingcurious.com/automatic/appcast2.xml',
          :sha256 => '5f6401adefe07978a8136fd440ff6c9a5268e11cc1b0857aa75a4447d048b1ce'
  name 'Automatic'
  homepage 'http://codingcurious.com/automatic/'
  license :commercial

  prefpane 'Automatic.prefPane'
end
