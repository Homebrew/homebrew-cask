cask 'receipts' do
  version '1.9.6-291'
  sha256 '5829716ef4fd811d9508de07684b134c06d78e2c4d9b87fbae9cccf8493dde46'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
