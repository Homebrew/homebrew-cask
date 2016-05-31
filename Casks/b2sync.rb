cask 'b2sync' do
  version :latest
  sha256 :no_check

  url 'https://www.backblaze.com/b2/docs/b2sync_for_mac.zip'
  name 'B2Sync'
  homepage 'https://www.backblaze.com/b2/docs/b2sync.html'
  license :mit

  app 'b2sync_for_mac/b2sync'
end
