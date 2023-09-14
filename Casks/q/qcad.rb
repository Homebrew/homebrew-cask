cask "qcad" do
  arch arm: "11-13-qt6-arm64", intel: "10.14-13"

  on_arm do
    version "3.28.2.4"
    sha256 "863efc7a245efaea6d63aa8f9433b7e87bff5211d771508304d4a672531917e7"
  end
  on_intel do
    version "3.28.2"
    sha256 "02c44a3bffaf4224f603933786c502c2cf7a1107e97ac6d90c5e095581b8bdea"
  end

  url "https://www.qcad.org/archives/qcad/qcad-#{version}-trial-macos-#{arch}.dmg"
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
