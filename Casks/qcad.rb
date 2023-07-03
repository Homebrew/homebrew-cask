cask "qcad" do
  arch arm: "11-13-arm64", intel: "10.14-13"

  version "3.28.1"

  on_high_sierra :or_older do
    sha256 "e7b9ca380f0477c0252875eeacacf526806f4e303ea02cf6b200ece9e33512dc"

    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  end
  on_mojave :or_newer do
    sha256 arm:   "9e5fc21bd450c5d2daeed4328d2cf5fed25f0be815a2d573e464f9650de7b160",
           intel: "ce599a730aa157dcde6c41971e400f446cf9687278d7a6dfb7786874f2e8eeef"

    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-#{arch}.dmg"
  end

  name "QCAD"
  desc "Free, open source application for computer aided drafting in 2D"
  homepage "https://www.qcad.org/"

  livecheck do
    url "https://www.qcad.org/en/download"
    regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-]#{arch}\.dmg/i)
  end

  app "QCAD.app"

  zap trash: [
    "~/.config/QCAD",
    "~/Library/Preferences/org.qcad.plist",
    "~/Library/Saved Application State/org.qcad.savedState",
  ]
end
