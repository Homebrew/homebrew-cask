cask 'sync-messenger' do
  version '1.3.0'
  sha256 'b1cc06995d222083b2f6cce7b3a96307e52cc26d4aadd066cbdfaf7e555740e8'

  url 'https://wtd-sync-update-channel.herokuapp.com/download/latest?platform=darwin&channel=production'
  name 'sync-messenger'
  homepage 'https://www.wantedly.com/sync'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sync.app'
end
