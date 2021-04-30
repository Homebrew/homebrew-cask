cask "librepcb" do
  version "0.1.5"
  sha256 "aade81fb35bae849dbef43cf9a46351c73602c0cc0c5279c99606e103c0790f6"

  url "https://download.librepcb.org/releases/#{version}/librepcb-#{version}-mac-x86_64.dmg"
  name "LibrePCB"
  desc "EDA software to develop printed circuit boards"
  homepage "https://librepcb.org/"

  livecheck do
    url "https://librepcb.org/download/"
    strategy :page_match
    regex(%r{href=.*?/librepcb-(\d+(?:\.\d+)*)-mac-x86_64\.dmg}i)
  end

  app "librepcb.app"

  zap trash: "~/Library/Saved Application State/com.yourcompany.librepcb.savedState"
end
