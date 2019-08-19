cask 'ocenaudio' do
  version '3.7.3'

  if MacOS.version <= :high_sierra
    sha256 '1bc0c0742df9a2d683e72f50bef06ca14af2ac6e5c068eb96ebe973fa52a6d37'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '580a44cef051ae28df615411d53f0328fb94c55a1b600894e394cde2c3862293'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
