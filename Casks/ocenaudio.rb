cask 'ocenaudio' do
  version '3.6.2'

  if MacOS.version <= :high_sierra
    sha256 'da3883d9a25b6a6eecb7383250a824ffc7cf591e46eea6d68410a96a285e10a2'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 'f4d737e4f071655d4c0fe88768c81db21c253bceab8ba835745d13bcc1cccb9b'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
