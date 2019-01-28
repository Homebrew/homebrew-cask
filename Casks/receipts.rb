cask 'receipts' do
  version '1.9.3-263'
  sha256 '94418ad6a969c2dee0f7395d0f5730523375954965fe2e6be9260469751e4fcb'

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  appcast 'https://www.receipts-app.com/updater.php'
  name 'Receipts'
  homepage 'https://www.receipts-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Receipts.app'
end
