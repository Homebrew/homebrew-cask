cask 'securesafe' do
  version :latest
  sha256 :no_check

  url 'https://www.securesafe.com/en/assets/sync-client/SecureSafe.dmg'
  name 'SecureSafe'
  homepage 'https://www.securesafe.com/'

  app 'SecureSafe.app'
end
