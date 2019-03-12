cask 'ocenaudio' do
  version '3.6.0.1'
  sha256 'cd173c3fff41e65b162a594d0f99d6f4d287f0ca5cd61d0a11318cb3591ae85b'

  url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :mojave'

  app 'ocenaudio.app'
end
