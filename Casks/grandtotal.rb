cask 'grandtotal' do
  version '4.3.6'
  sha256 'a7052381d06aa03a6bdc278b832f2955c7990107e0e1c659cd0e8da494704eb1'

  url "https://mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.zip"
  appcast "https://mediaatelier.com/GrandTotal#{version.major}/feed.php",
          checkpoint: '68ae9f5c73f30e0e7e7f0b7cc74b34e61a15a48ab9cae184141b358b71b9bd7b'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
