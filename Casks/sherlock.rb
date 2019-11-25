cask 'sherlock' do
  version '1.7.3'
  sha256 '41c48300fc7989f080acab97888a4ea656ca7107410ecb24a555c9a2d57f5bf9'

  url 'https://sherlock.inspiredcode.io/download-dmg'
  appcast 'https://updates.devmate.com/io.inspiredcode.Sherlock.xml'
  name 'Sherlock'
  homepage 'https://sherlock.inspiredcode.io/'

  depends_on macos: '>= :sierra'

  app 'Sherlock.app'
end
