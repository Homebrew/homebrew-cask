cask "librepcb" do
  version "1.1.0"
  sha256 "c180b82c82d25d041429ada111ee1cb5d8aa892411064e60fa8bb8f5ec945e6c"

  url "https://download.librepcb.org/releases/#{version}/librepcb-#{version}-mac-x86_64.dmg"
  name "LibrePCB"
  desc "EDA software to develop printed circuit boards"
  homepage "https://librepcb.org/"

  livecheck do
    url "https://librepcb.org/download/"
    regex(%r{href=.*?/librepcb[._-]v?(\d+(?:\.\d+)+)-mac-x86_64\.dmg}i)
  end

  app "librepcb.app"

  zap trash: [
    "~/Library/Preferences/org.librepcb.LibrePCB.plist",
    "~/Library/Saved Application State/com.yourcompany.librepcb.savedState",
    "~/Library/Saved Application State/org.librepcb.LibrePCB.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
