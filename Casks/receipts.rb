cask 'receipts' do
  version '1.9.6-289'
  sha256 'e7d715a3e21900f090016d86b29390a9ac6ed90483dbd2d9a0e2b8317a6d90c1'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
