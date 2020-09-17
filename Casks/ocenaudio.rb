cask "ocenaudio" do
  version "3.8.1"

  if MacOS.version <= :high_sierra
    sha256 "daed7b3f05720afc345c9207e4020e849e9d7ca69a500f4a96434532cff2c4ba"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg"
  else
    sha256 "2439f8a425a17e8d751a217e61ee9a96cfe3da0f963be637829fa794088e48d8"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  end
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  name "ocenaudio"
  homepage "https://www.ocenaudio.com/en"

  depends_on macos: ">= :sierra"

  app "ocenaudio.app"
end
