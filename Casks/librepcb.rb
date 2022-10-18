cask "librepcb" do
  version "0.1.7"
  sha256 "e984bbf8306f5e8f4a2da145fe6f0d151502282120c4dab6fc91c61a45970aac"

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
