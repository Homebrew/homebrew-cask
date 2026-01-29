cask "librepcb" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.0"
  sha256 arm:   "729bacf2493378fd4809f8b8700eae44db6b63a4d3e2337f583c3e62d823896a",
         intel: "784c23dca953d3eac1132a288a2fa4d430aef26ce99bf89b864e911293ea9a20"

  on_intel do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check
  end

  url "https://download.librepcb.org/releases/#{version}/librepcb-#{version}-mac-#{arch}.dmg"
  name "LibrePCB"
  desc "EDA software to develop printed circuit boards"
  homepage "https://librepcb.org/"

  livecheck do
    url "https://librepcb.org/download/"
    regex(%r{href=.*?/librepcb[._-]v?(\d+(?:\.\d+)+)-mac-#{arch}\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "librepcb.app"

  zap trash: [
    "~/Library/Preferences/org.librepcb.LibrePCB.plist",
    "~/Library/Saved Application State/com.yourcompany.librepcb.savedState",
    "~/Library/Saved Application State/org.librepcb.LibrePCB.savedState",
  ]
end
