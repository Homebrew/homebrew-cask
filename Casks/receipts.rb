cask 'receipts' do
  version '1.9.7-295'
  sha256 '4f3e262322aad4d09bdc686b06098ae07c647ff2d6dcf9bc1c45834cd93b244d'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
