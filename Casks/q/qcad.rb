cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.32.2,12.7-15-qt6"
    sha256 "332b74c6d87929b3889327d7fe05f5027ed658d1dc6f0dcfc38d129efa5df353"
  end
  on_intel do
    version "3.32.2,10.14-15"
    sha256 "3a38f0435394180fc2417e9e291f23d95550776758e33ba45dcf3b23d9675da0"
  end

  url "https://www.qcad.org/archives/qcad/qcad-#{version.csv.first}-trial-macos-#{version.csv.second}#{arch}.dmg"
  name "QCAD"
  desc "Free, open source application for computer aided drafting in 2D"
  homepage "https://www.qcad.org/"

  livecheck do
    url "https://www.qcad.org/en/download"
    regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-](\d+(?:[._-]\d+)+(?:[._-]qt\d)?)#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "QCAD.app"

  zap trash: [
    "~/.config/QCAD",
    "~/Library/Preferences/org.qcad.plist",
    "~/Library/Saved Application State/org.qcad.savedState",
  ]
end
