cask "ocenaudio" do
  version "3.9.1"

  if MacOS.version <= :high_sierra
    sha256 "afe88197e61097964f08f015cf4d2676d284ecbecf49fd5f6a9f9defc4eb81a8"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg"
  else
    sha256 "27c611a200bb8eae2b39c6830a28a9597da3566094dd3b5198c7f4344d6b2c2a"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  end
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  name "ocenaudio"
  homepage "https://www.ocenaudio.com/en"

  depends_on macos: ">= :sierra"

  app "ocenaudio.app"
end
