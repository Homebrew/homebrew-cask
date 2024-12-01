cask "librepcb" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "30d2c18589bb8bbb75c6d286c8a4933d473904ac0015d0ba598f9afebf2cf9c7",
         intel: "69f84d12499a7a822fadc7732d773effbe0809e13ebccb2894fc56ee996d2cf1"

  url "https://download.librepcb.org/releases/#{version}/librepcb-#{version}-mac-#{arch}.dmg"
  name "LibrePCB"
  desc "EDA software to develop printed circuit boards"
  homepage "https://librepcb.org/"

  livecheck do
    url "https://librepcb.org/download/"
    regex(%r{href=.*?/librepcb[._-]v?(\d+(?:\.\d+)+)-mac-#{arch}\.dmg}i)
  end

  app "librepcb.app"

  zap trash: [
    "~/Library/Preferences/org.librepcb.LibrePCB.plist",
    "~/Library/Saved Application State/com.yourcompany.librepcb.savedState",
    "~/Library/Saved Application State/org.librepcb.LibrePCB.savedState",
  ]
end
