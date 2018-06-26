cask 'receipts' do
  version '1.8.1-197'
  sha256 '78536ff2dee072586bc64d1f9c2879dbd766aa5a18fb8120b9cdbcd63bd58a27'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
