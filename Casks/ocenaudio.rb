cask 'ocenaudio' do
  version '3.7.18'

  if MacOS.version <= :high_sierra
    sha256 'fbd8deea3b333f9e6eb1e40439aee202904eb33c30ed08010bfcdfc3e917ef8f'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '1f484469a23df59379bab73aa87b48c5ecd74d75d5669bf210f8bccf6a01c268'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
