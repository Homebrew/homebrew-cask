cask 'ocenaudio' do
  version '3.7.3'

  if MacOS.version <= :high_sierra
    sha256 '589e62c2f4785ae8dcab530dd6503fbeee6a1d70f77a4da1e5e356a9060f451a'

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
