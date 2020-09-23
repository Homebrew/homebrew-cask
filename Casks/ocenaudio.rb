cask "ocenaudio" do
  version "3.9.0"

  if MacOS.version <= :high_sierra
    sha256 "8b4deb9a9e7e752d5ec53a9dc118384bb11dd6dd45d0b3d7a7d46ab90555c1ba"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg"
  else
    sha256 "4cbd0e39567146d567c4943424b9c1fca1ed622946b9bdfc5a00399c3c3bab7c"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  end
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  name "ocenaudio"
  homepage "https://www.ocenaudio.com/en"

  depends_on macos: ">= :sierra"

  app "ocenaudio.app"
end
