cask "ocenaudio" do
  version "3.10.4"

  if MacOS.version <= :high_sierra
    sha256 "f90d66c1ef3cf5f85966f089fd8a17fb2ad4b19c171290effbd7bba941a52623"

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
