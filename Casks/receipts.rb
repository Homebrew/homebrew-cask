cask 'receipts' do
  version '1.6.2.2'
  sha256 '4038903fd7d0761396e0dc9fb879363bac460f455529a7e089828530c63d5d73'

  url "https://www.receipts-app.com/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php',
          checkpoint: 'ee085994981ad3d7c90a9da6d1fc9d44725710436f6f44d1027b863d66a381ec'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  app 'Receipts.app'
end
