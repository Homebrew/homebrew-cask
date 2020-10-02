cask "ocenaudio" do
  version "3.9.2"

  if MacOS.version <= :high_sierra
    sha256 "afe88197e61097964f08f015cf4d2676d284ecbecf49fd5f6a9f9defc4eb81a8"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg"
  else
    sha256 "5a0ff9b898752b7086a4cd59356770acd3e1314ba2dabbda2d1cfd907290b7ff"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  end
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  name "ocenaudio"
  homepage "https://www.ocenaudio.com/en"

  depends_on macos: ">= :sierra"

  app "ocenaudio.app"
end
