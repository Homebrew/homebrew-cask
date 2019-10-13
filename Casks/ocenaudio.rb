cask 'ocenaudio' do
  version '3.7.5'

  if MacOS.version <= :high_sierra
    sha256 'a20b4a2b87ede0e11cb05616eb46028fecea8f46df63665fd0b3d5d76d789ce4'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '52373afa3400f2c4133b9927f01d157619ba658dec9ab917d1db34a4d6ce06a2'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
