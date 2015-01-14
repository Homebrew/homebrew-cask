cask :v1 => 'securesafe' do
  version :latest
  sha256 :no_check

  url 'http://www.securesafe.com/en/assets/sync-client/SecureSafe.dmg'
  homepage 'https://www.securesafe.com/'
  license :unknown

  app 'SecureSafe.app'
end
