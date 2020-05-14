cask 'ocenaudio' do
  version '3.7.14'

  if MacOS.version <= :high_sierra
    sha256 '47553175f53633a9f03a3a12fff44b27335d7223555f398d92ffa09aa6ee3776'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 'eb1cf21d2eba25d07406fbe5deb8e92885738070172642594256c0ed6ecfdcf9'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
