cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.31.0,12.7-14-qt6"
    sha256 "e577b5f7d4eb39f9f2c8c1e9e24368ad14445fa90464dbaabc06ec72e93395bf"
  end
  on_intel do
    version "3.31.0,10.14-14"
    sha256 "8ee3cdd2482effe5883d727a478bcd8bd5d61fd1d47ca3359e6c3cae94d0fa37"
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
