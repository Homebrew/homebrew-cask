cask "ocenaudio" do
  version "3.11.7"
  sha256 :no_check

  if MacOS.version <= :high_sierra
    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg"
  elsif MacOS.version <= :catalina
    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg"
  elsif Hardware::CPU.intel?
    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_bigsur.dmg"
  else
    url "https://www.ocenaudio.com/downloads/index.php/ocenaudio_bigsur_arm64.dmg"
  end

  name "ocenaudio"
  desc "Audio editor"
  homepage "https://www.ocenaudio.com/en"

  livecheck do
    url "https://www.ocenaudio.com/changelog"
    regex(/download\?version=v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  app "ocenaudio.app"
end
