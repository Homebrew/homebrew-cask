cask "librepcb" do
  version "0.1.6"
  sha256 "583324fa0621cfaeb488f077f458c450c49fb9960321c6b3f90f2ee5cf581ba5"

  url "https://download.librepcb.org/releases/#{version}/librepcb-#{version}-mac-x86_64.dmg"
  name "LibrePCB"
  desc "EDA software to develop printed circuit boards"
  homepage "https://librepcb.org/"

  livecheck do
    url "https://librepcb.org/download/"
    regex(%r{href=.*?/librepcb[._-]v?(\d+(?:\.\d+)+)-mac-x86_64\.dmg}i)
  end

  app "librepcb.app"

  zap trash: "~/Library/Saved Application State/com.yourcompany.librepcb.savedState"
end
