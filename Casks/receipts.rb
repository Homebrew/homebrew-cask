cask 'receipts' do
  version '1.9.4-267'
  sha256 'fbb2fbafb8159e4f6711ac6db2958d1ccfe04667b46fe5c0ac5f0bd40ccf5f6b'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
