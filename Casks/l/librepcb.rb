cask "librepcb" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.0"
  sha256 arm:   "5b9061a42f429fb3d4f7404e50542fc9935c9b807cafcb205a9185ed3afa5c3a",
         intel: "1f19ce21176ce784d875d4592caa49872beaf09be2259b76cc092cab401267b3"

  url "https://download.librepcb.org/releases/#{version}/librepcb-#{version}-mac-#{arch}.dmg"
  name "LibrePCB"
  desc "EDA software to develop printed circuit boards"
  homepage "https://librepcb.org/"

  livecheck do
    url "https://librepcb.org/download/"
    regex(%r{href=.*?/librepcb[._-]v?(\d+(?:\.\d+)+)-mac-#{arch}\.dmg}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "librepcb.app"

  zap trash: [
    "~/Library/Preferences/org.librepcb.LibrePCB.plist",
    "~/Library/Saved Application State/com.yourcompany.librepcb.savedState",
    "~/Library/Saved Application State/org.librepcb.LibrePCB.savedState",
  ]
end
