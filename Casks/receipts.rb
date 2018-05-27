cask 'receipts' do
  version '1.8.0-192'
  sha256 '32dea2c25bee86ba0dd18f39869a749e6c220c9a6d726fe01a97f297c4f8d8da'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php',
          checkpoint: 'b0b5e80feec0f22f7e4296b88bf6e7d8b7e215a71be1ba235c48239cb3daf420'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
