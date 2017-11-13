cask 'receipts' do
  version '1.6.1'
  sha256 'dd978f2fa630bd2594d59c810bb7bf6cf2c7b0855ae2435e323a8e83598e5706'

  url "https://www.receipts-app.com/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php',
          checkpoint: 'ea95e24c8d68bb5c367c63bf23f8cd39418a36df7dede64cf6e0391f42cef7cc'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  app 'Receipts.app'
end
