cask 'receipts' do
  version '1.8.2-207'
  sha256 '29f49d74088bf1b92d00567387e093fd46e18e1aaa111a88b166ef3690dadd00'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
