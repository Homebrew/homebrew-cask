cask 'ocenaudio' do
  version '3.7.11'

  if MacOS.version <= :high_sierra
    sha256 '64ce9f59d2dadd750bf07e769a78523ea5a99c5c351ee3e057d70f7873132c5e'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '51fd7b858ac204ddd23946b7ac1fe755d032b85c5711b29bd99703f7dc178fc6'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
