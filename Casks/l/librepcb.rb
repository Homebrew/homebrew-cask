cask "librepcb" do
  arch arm: "arm64", intel: "x86_64"

  version "2.1.1"
  sha256 arm:   "d3050399256c0d15cf7e561ca52e09b59facc25801d5bdf56d2df643236e3206",
         intel: "c4394dafe9355acfdfa0271c4229f633d21cbcb80e0788f1a9c9e094c3a75ef5"

  url "https://download.librepcb.org/releases/#{version}/librepcb-#{version}-mac-#{arch}.dmg"
  name "LibrePCB"
  desc "EDA software to develop printed circuit boards"
  homepage "https://librepcb.org/"

  livecheck do
    url "https://librepcb.org/download/"
    regex(%r{href=.*?/librepcb[._-]v?(\d+(?:\.\d+)+)-mac-#{arch}\.dmg}i)
  end

  depends_on macos: :big_sur

  app "librepcb.app"

  zap trash: [
    "~/Library/Preferences/org.librepcb.LibrePCB.plist",
    "~/Library/Saved Application State/com.yourcompany.librepcb.savedState",
    "~/Library/Saved Application State/org.librepcb.LibrePCB.savedState",
  ]
end
