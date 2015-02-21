cask :v1 => 'peerio' do
  version :latest
  sha256 '3a3689f9a511dd701fc0ef7733016e828eb8c01b7c4ba23a484f289b654a315e'

  url 'https://peerio.com/download/peerio-mac.zip'
  name 'Peerio'
  homepage 'https://peerio.com/'
  license :gpl

  app 'Peerio.app'
end
