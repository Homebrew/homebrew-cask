cask "ocenaudio" do
  version "3.9.5"

  if MacOS.version <= :high_sierra
    sha256 "a286a08532a18843bbb7c3e9dd1f087ddc4c7f8716eafb1f83d890bb32a556e7"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg"
  else
    sha256 "a5402b621ddbd0415a9303f1b80dc90ddf72dc18a26dc80ccc187b465aa9e828"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  end
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  name "ocenaudio"
  desc "Audio editor"
  homepage "https://www.ocenaudio.com/en"

  depends_on macos: ">= :sierra"

  app "ocenaudio.app"
end
