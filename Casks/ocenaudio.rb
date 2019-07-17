cask 'ocenaudio' do
  version '3.7.1'

  if MacOS.version <= :high_sierra
    sha256 'adf522d3e5f570d988487bfc508f0bf77b6dad7f0409f821d86e083b797b7cbe'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '94f1ce8048dc06c069c3a5031d1bf8b785f549db243247241ebce27e496bc0c0'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
