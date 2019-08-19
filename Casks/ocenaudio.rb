cask 'ocenaudio' do
  version '3.7.3'

  if MacOS.version <= :high_sierra
    sha256 'd359dd72f7bd8ede0e9557b0818336f1418d66b5c50fe740916f4820857079bb'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '6d0b42cb13083b7d7559cc060604a73e3e289886b64159e89d7d47b9e0fabd75'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
