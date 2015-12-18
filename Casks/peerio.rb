cask 'peerio' do
  version :latest
  sha256 :no_check

  url 'https://peerio.com/download/peerio-mac.zip'
  name 'Peerio'
  homepage 'https://peerio.com/'
  license :gpl

  app 'Peerio.app'
end
