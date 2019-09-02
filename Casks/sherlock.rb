cask 'sherlock' do
  version '1.6.0'
  sha256 '54df9ffad9d298c5b1e6a6097373bb4e047bdcd3727676317071eeabbac91195'

  url 'https://sherlock.inspiredcode.io/download-dmg'
  appcast 'https://updates.devmate.com/io.inspiredcode.Sherlock.xml'
  name 'Sherlock'
  homepage 'https://sherlock.inspiredcode.io/'

  depends_on macos: '>= :sierra'

  app 'Sherlock.app'
end
