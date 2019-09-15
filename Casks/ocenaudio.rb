cask 'ocenaudio' do
  version '3.7.4'

  if MacOS.version <= :high_sierra
    sha256 'a20b4a2b87ede0e11cb05616eb46028fecea8f46df63665fd0b3d5d76d789ce4'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '303d78a55aab37428ee369d656253c5e904adfa6880758aaafbe3e239ec7dcf3'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
