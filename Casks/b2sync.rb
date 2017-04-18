cask 'b2sync' do
  version ':latest'
  sha256 '93b11c9ea15077bc894ac0634dd999022d1e8c7ad1ddcdff3e78f9ea3fa27f85'

  url 'https://www.backblaze.com/b2/docs/b2sync_for_mac.zip'
  name 'B2Sync for Mac'
  homepage 'https://www.backblaze.com/b2/docs/b2sync.html'
  license :mit

  app 'b2sync_for_mac/b2sync'
end
