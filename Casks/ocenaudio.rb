cask 'ocenaudio' do
  version '3.6.1'

  if MacOS.version <= :high_sierra
    sha256 '1bc0c0742df9a2d683e72f50bef06ca14af2ac6e5c068eb96ebe973fa52a6d37'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '075c79480ddef77da947ca220b14311d1833b9699480040af4c5e6f234d6eb2b'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
