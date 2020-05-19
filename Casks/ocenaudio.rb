cask 'ocenaudio' do
  version '3.7.15'

  if MacOS.version <= :high_sierra
    sha256 '47553175f53633a9f03a3a12fff44b27335d7223555f398d92ffa09aa6ee3776'

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
