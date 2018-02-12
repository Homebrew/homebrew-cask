cask 'receipts' do
  version '1.6.3'
  sha256 '314ffaba255ea79e214d1b2e75faf0c517806dd94742b0a31fda8fe7ffb4a492'

  url "https://www.receipts-app.com/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php',
          checkpoint: 'b6fa5f3c18d74a111152539b72fd4177d7f7207997eb4253b48d81a4fe13b40b'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  app 'Receipts.app'
end
