cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.30.1,12.7-14-qt6"
    sha256 "8f560dab25a811703175e415ecd260697943d6e9c46401163a7e67a6f46de88f"
  end
  on_intel do
    version "3.30.1,10.14-14"
    sha256 "264e6e4adc18d07cbee8231c40bde853a8ecc7d4403e0c6bc9a7e4af80bf938c"
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
