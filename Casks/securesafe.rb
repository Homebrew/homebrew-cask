cask 'securesafe' do
  version :latest
  sha256 :no_check

  url 'http://www.securesafe.com/en/assets/sync-client/SecureSafe.dmg'
  name 'SecureSafe'
  homepage 'https://www.securesafe.com/'
  license :gratis

  app 'SecureSafe.app'
end
