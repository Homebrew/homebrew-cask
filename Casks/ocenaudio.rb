cask 'ocenaudio' do
  version '3.7.12'

  if MacOS.version <= :high_sierra
    sha256 '96f9a8edf279f0d48b49f9dda5bc3bda26e9d011fc5a284db1e845fa8b612904'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '038d6b36ead62f02d3bb2352e7252eaeb107a3a0ea86d30f897bbe34aeda6f07'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
