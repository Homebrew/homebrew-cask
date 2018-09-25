cask 'receipts' do
  version '1.8.3-213'
  sha256 '5f7f0181f1bfb76655cf95e53e415552e4c9476a8a9550f71c86bc560269a539'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
