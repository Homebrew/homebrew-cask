cask 'ocenaudio' do
  version '3.6.2'

  if MacOS.version <= :high_sierra
    sha256 '0c45879b66e3392aacf344d04c3731cca423b27195b85eabab1c33a7d0389297'

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
