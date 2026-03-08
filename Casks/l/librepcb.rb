cask "librepcb" do
  arch arm: "arm64", intel: "x86_64"

  version "2.0.1"
  sha256 arm:   "e7cd6f32d8ef6ea9724d64c8c2d82f65642da0166a0f3b38b15f2a2856a6e650",
         intel: "f460757030eccaea81aba8b8a0de54612f4632fd0a86f4f55ccb5def2c97a8c0"

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
