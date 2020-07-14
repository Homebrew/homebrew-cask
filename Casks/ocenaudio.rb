cask 'ocenaudio' do
  version '3.7.20'

  if MacOS.version <= :high_sierra
    sha256 '0a24c7f94cf48c424c87ba60075746f64d4c373f07066cdd84b10f3be3e947bb'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '347e3506348a0bc01b3382008b84312c9f1c6bf0f62b5a7eaaa8b48d446ae584'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
