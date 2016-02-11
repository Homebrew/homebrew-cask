cask 'automatic' do
  version '2.4.7.392'
  sha256 'b1d4b7b4a85eb81010b5863b439b978179f49c1c5d6522e481106bf93fbea94f'

  # com-codingcurious-downloads.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://com-codingcurious-downloads.s3.amazonaws.com/Automatic.#{version}.zip"
  appcast 'http://update.codingcurious.com/automatic/appcast2.xml',
          checkpoint: '72d2e6e0c0ba0c4692f34e37e70da0ae4f4d54099e2a0618c237db03cf402c69'
  name 'Automatic'
  homepage 'http://codingcurious.com/automatic/'
  license :commercial

  prefpane 'Automatic.prefPane'
end
