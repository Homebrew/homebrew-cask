cask 'sherlock' do
  version '1.7.1'
  sha256 'e8c90e526f40e45de53d25c5dae3a19f2fa50624f18e7cfbbf92e196765f12ca'

  url 'https://sherlock.inspiredcode.io/download-dmg'
  appcast 'https://updates.devmate.com/io.inspiredcode.Sherlock.xml'
  name 'Sherlock'
  homepage 'https://sherlock.inspiredcode.io/'

  depends_on macos: '>= :sierra'

  app 'Sherlock.app'
end
