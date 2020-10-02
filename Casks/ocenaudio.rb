cask "ocenaudio" do
  version "3.9.3"

  if MacOS.version <= :high_sierra
    sha256 "32c44f35967dca63baeaa3f646a5289cc78a0c963df9ce9ab6c67258b0e88b1b"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg"
  else
    sha256 "63aaec8cd3ad45149218f8412410aeeb6965c97a4a85c5d7294162ba57043d65"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  end
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  name "ocenaudio"
  homepage "https://www.ocenaudio.com/en"

  depends_on macos: ">= :sierra"

  app "ocenaudio.app"
end
