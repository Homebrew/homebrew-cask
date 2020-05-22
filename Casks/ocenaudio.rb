cask 'ocenaudio' do
  version '3.7.16'

  if MacOS.version <= :high_sierra
    sha256 '4a5078a35041c1d7f1428ce6bc67ed94d75c91044974f693484c49146bb0869f'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 'cc383f3a6ba3bc90bfc1c071802ae535f66da2ea5c64a6acceee07c7d1d32853'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
