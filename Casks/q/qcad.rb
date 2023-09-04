cask "qcad" do
  arch arm: "11-13-qt6-arm64", intel: "10.14-13"

  version "3.28.2"

  on_high_sierra :or_older do
    sha256 "e7b9ca380f0477c0252875eeacacf526806f4e303ea02cf6b200ece9e33512dc"

    url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-10.10-10.13.dmg"
  end
  on_mojave :or_newer do
    sha256 arm:   "2e36b66092963a6a36604111001d3276ac5905f66a9608ca46cc50952cc772e8",
           intel: "02c44a3bffaf4224f603933786c502c2cf7a1107e97ac6d90c5e095581b8bdea"

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
