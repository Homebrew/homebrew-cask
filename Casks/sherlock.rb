cask 'sherlock' do
  version '1.7.0'
  sha256 'c0eeab8eb7371911ff59d5b1ef9fc3f96643ca39807fa2eb32d8292b2fee41b3'

  url 'https://sherlock.inspiredcode.io/download-dmg'
  appcast 'https://updates.devmate.com/io.inspiredcode.Sherlock.xml'
  name 'Sherlock'
  homepage 'https://sherlock.inspiredcode.io/'

  depends_on macos: '>= :sierra'

  app 'Sherlock.app'
end
