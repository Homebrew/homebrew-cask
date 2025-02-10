cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.32.1,12.7-15-qt6"
    sha256 "dde2deff3f520aed0ebed88f74c61125f65380f2096848fbfdf245740d661f12"
  end
  on_intel do
    version "3.32.1,10.14-15"
    sha256 "85b47f86624b6d24d22b4bd3d718288a0c2972aec4b5571953ca670cb2333646"
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
