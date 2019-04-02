cask 'ocenaudio' do
  version '3.6.1'

  if MacOS.version <= :high_sierra
    sha256 '0c45879b66e3392aacf344d04c3731cca423b27195b85eabab1c33a7d0389297'

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
