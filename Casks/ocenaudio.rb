cask 'ocenaudio' do
  version '3.6.1'
  sha256 '075c79480ddef77da947ca220b14311d1833b9699480040af4c5e6f234d6eb2b'

  url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :mojave'

  app 'ocenaudio.app'
end
