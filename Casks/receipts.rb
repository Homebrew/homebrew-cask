cask 'receipts' do
  version '1.7.0'
  sha256 'cf172851eeeb2c6e4a9c6f22583e08e857c3a5c5bcdea5350a4fde9b8492b76e'

  url "https://www.receipts-app.com/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php',
          checkpoint: 'c1eab9f7572b0e419c0636530f9bbfa3826b34c99843c85b942291e3ec542d8c'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  app 'Receipts.app'
end
