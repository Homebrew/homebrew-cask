cask 'securesafe' do
  version '2.2.4'
  sha256 '403a009d56c3c9e891570ddf06f3499c86868a0ca9138f66b3a3718ad04742c0'

  url "https://www.securesafe.com/downloads/SecureSafe_#{version}.dmg"
  name 'SecureSafe'
  homepage 'https://www.securesafe.com/'

  app 'SecureSafe.app'
end
