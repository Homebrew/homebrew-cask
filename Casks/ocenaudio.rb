cask 'ocenaudio' do
  version '3.7.15'

  if MacOS.version <= :high_sierra
    sha256 '52a544285a93d41c5ef41aaeaf1a82585f4e77085faeeff92dabaa710356a6ce'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '3cb388b0a3694aa54794a90ba93e58033db7d27bd8786491b7acd9df68ac548e'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
