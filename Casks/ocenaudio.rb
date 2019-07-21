cask 'ocenaudio' do
  version '3.7.1'

  if MacOS.version <= :high_sierra
    sha256 '65dd6ce56f58e5c344e9757a3936786cb985ea3c54a1e1d8b009fd4e08c7c24b'

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
