cask 'receipts' do
  version '1.9.0-225'
  sha256 'be7be082a1db7138f65c7f56de6ede93d7c1796c264015c18822c0f9d6718a42'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
