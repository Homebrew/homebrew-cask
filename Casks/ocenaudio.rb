cask 'ocenaudio' do
  version '3.7.0'

  if MacOS.version <= :high_sierra
    sha256 'efab2db35ce14aca045609e5aff8ada5e08df15bebb80da4692e9e0ad13f024d'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '2b52f2a918302a49c77e156c2beace9a4baa0a654e7a314e2c35113daf98a3ad'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
