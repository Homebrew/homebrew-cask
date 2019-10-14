cask 'receipts' do
  version '1.9.5-271'
  sha256 'e369becf9df321adb42d6476f020a9196f04d4cb5bdad90d339a71c01db72a05'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
