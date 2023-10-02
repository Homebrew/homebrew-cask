cask "pdf-squeezer" do
  version "4.3.8"
  sha256 :no_check

  url "https://www.witt-software.com/downloads/pdfsqueezer/PDF%20Squeezer.dmg"
  name "PDF Squeezer"
  desc "PDF compression tool"
  homepage "https://witt-software.com/pdfsqueezer/"

  livecheck do
    url "https://www.witt-software.com/downloads/pdfsqueezer/pdfsq#{version.major}-appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :catalina"

  app "PDF Squeezer.app"

  zap trash: [
    "~/Library/Application Scripts/com.witt-software.PDF-Squeezer",
    "~/Library/Application Scripts/group.witt-software.com.PDF-Squeezer",
    "~/Library/Containers/com.witt-software.PDF-Squeezer",
    "~/Library/Group Containers/group.witt-software.com.PDF-Squeezer",
  ]
end
