cask "ocenaudio" do
  version "3.8.1"

  if MacOS.version <= :high_sierra
    sha256 "ada05788335a285029d7474e6989775dcdf63c56fa3d1f8fa1577c5142d7c96d"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg"
  else
    sha256 "34e5cbeb17e7c390287f805c28bc9fac5a335793d0f1273aff95c39eca3e8eae"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  end
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  name "ocenaudio"
  homepage "https://www.ocenaudio.com/en"

  depends_on macos: ">= :sierra"

  app "ocenaudio.app"
end
