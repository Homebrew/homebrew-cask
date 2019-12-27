cask 'ocenaudio' do
  version '3.7.8'

  if MacOS.version <= :high_sierra
    sha256 'dd805facb643556a81a37bc870d8e8ba99d73115c7a4eae01d5e81ad28b2f225'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '21883b7ed3c2d42766a17f09328547a9bf58b6f9057ceb1c9c835b0b4f3ee88d'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
