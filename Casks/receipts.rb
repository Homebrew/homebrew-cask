cask 'receipts' do
  version '1.9.2-253'
  sha256 'f37c8cf9c6b6d1fd18e0083b0526a54b9787b1c90ab4511fac8bbb3e6e3df572'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
