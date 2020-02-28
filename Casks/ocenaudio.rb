cask 'ocenaudio' do
  version '3.7.10'

  if MacOS.version <= :high_sierra
    sha256 '50fe4b9c5cfaf332138fe4907ee94d10c3c31d62a638f074a43b5f39e6e1f575'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 'b7d31c70ffec5ac6c9bc8efc71c535220e105411e5529b1babb7ea3f46404e48'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
