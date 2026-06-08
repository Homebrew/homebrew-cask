cask "librepcb" do
  arch arm: "arm64", intel: "x86_64"

  version "2.1.0"
  sha256 arm:   "c7dfd88604d62b88c93229a092f0f16816e6051d702005d7c5e7c2b31516efe7",
         intel: "838b586a6e1c191755356a4c9c3a1ebbb4edeceba75f8bea3a3f4665b5d0c01b"

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
