cask "ocenaudio" do
  version "3.10.2"

  if MacOS.version <= :high_sierra
    sha256 "a286a08532a18843bbb7c3e9dd1f087ddc4c7f8716eafb1f83d890bb32a556e7"

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg"
  else
    sha256 :no_check

    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  end
  name "ocenaudio"
  desc "Audio editor"
  homepage "https://www.ocenaudio.com/en"

  livecheck do
    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
    strategy :header_match
  end

  depends_on macos: ">= :sierra"

  app "ocenaudio.app"
end
