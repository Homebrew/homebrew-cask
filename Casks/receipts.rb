cask 'receipts' do
  version '1.7.4-183'
  sha256 '016430d49a5b1df2b416a913020178fba3ba2844f63d841954e9e2f4bd413bb2'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php',
          checkpoint: 'c6354604204e765de37ac78b65f79bd90b26038f255f075f92849e3a4250d992'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  app 'Receipts.app'
end
