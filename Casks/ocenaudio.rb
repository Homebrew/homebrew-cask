cask 'ocenaudio' do
  version '3.7.6'

  if MacOS.version <= :high_sierra
    sha256 '57b8a9ec3786754d1a7e22817ccd59cac0a1fb21d67515e2987ea9fa3c8eac50'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 'cdf64907c5718a50e82451d7fc1ddf2c3c6c960d514cb730dc58bc43a7fead15'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
