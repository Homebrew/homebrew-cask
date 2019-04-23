cask 'ocenaudio' do
  version '3.6.3'

  if MacOS.version <= :high_sierra
    sha256 'da3883d9a25b6a6eecb7383250a824ffc7cf591e46eea6d68410a96a285e10a2'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '390dda0dce4a477acde9d2634a75d30d0b96d7185d03d366a7f0371366f3f869'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
