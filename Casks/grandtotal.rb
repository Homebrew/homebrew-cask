cask 'grandtotal' do
  version '4.1.8'
  sha256 '3dd36d72eb18b3c9570db93f1215c1cf6be3aaffb574980d02f06ac38b676970'

  url "https://mediaatelier.com/GrandTotal4/GrandTotal_#{version}.zip"
  appcast 'https://mediaatelier.com/GrandTotal4/feed.php',
          checkpoint: '04a657ca30b65fa43391ffc1ac4ab7254e1eeec50db8c8c8772bdaf4a15f623b'
  name 'GrandTotal'
  homepage 'https://www.mediaatelier.com/GrandTotal4/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'GrandTotal.app'
end
