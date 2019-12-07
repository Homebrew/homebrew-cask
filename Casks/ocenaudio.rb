cask 'ocenaudio' do
  version '3.7.7'

  if MacOS.version <= :high_sierra
    sha256 'a7fd4619fca781cfcaa5f06e6357ef8a10828ac15154b3175b3ef170b7beab7e'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '94863edf8df6e94396001f936a376fa7148a898c1f05f549a9297d7f7a6664ab'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
