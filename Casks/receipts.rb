cask 'receipts' do
  version '1.9.1-235'
  sha256 '420b12a33dbf31ebb2deccfbad5332bfa71b1104e69951b4c4d838a9211198d3'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
