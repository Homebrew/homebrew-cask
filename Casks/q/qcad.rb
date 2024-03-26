cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.29.5,12.7-14-qt6"
    sha256 "d9da056d55943ffd317c2f8c36642c070c3f13a6a92b10aa3564098e333e39bb"
  end
  on_intel do
    version "3.29.5,10.14-14"
    sha256 "49d7980061d5df9e281b75c5e5ad755c43a41ac210db82dbe9e8a821ebc72ed3"
  end

  url "https://www.qcad.org/archives/qcad/qcad-#{version.csv.first}-trial-macos-#{version.csv.second}#{arch}.dmg"
  name "QCAD"
  desc "Free, open source application for computer aided drafting in 2D"
  homepage "https://www.qcad.org/"

  livecheck do
    url "https://www.qcad.org/en/download"
    regex(/qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-](\d+(?:[._-]\d+)+(?:[._-]qt\d)?)#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.first},#{match.second}" }
    end
  end

  app "QCAD.app"

  zap trash: [
    "~/.config/QCAD",
    "~/Library/Preferences/org.qcad.plist",
    "~/Library/Saved Application State/org.qcad.savedState",
  ]
end
