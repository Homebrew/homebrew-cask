cask 'ocenaudio' do
  version '3.7.2'

  if MacOS.version <= :high_sierra
    sha256 '65dd6ce56f58e5c344e9757a3936786cb985ea3c54a1e1d8b009fd4e08c7c24b'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '33a08bbfb277e9f5aeae4928265d65c3d5ee47aca96fa5a6409200371f90d33b'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
