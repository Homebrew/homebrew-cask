cask 'receipts' do
  version '1.9.8-320'
  sha256 'afb0342e99667f438691d6ee3e54600c837090246ebe8ca4c27be953613cb3ac'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
