cask 'ocenaudio' do
  version '3.6.4'

  if MacOS.version <= :high_sierra
    sha256 'b7676592493ba284099f164032f486caf7b57db571237943cd1b36f5866621ae'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 'a6e3ef738a35d9833faca5af1f93d134655d8c69dc3d312ec204a7462e8573e9'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
