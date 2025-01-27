cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.32.0,12.7-15-qt6"
    sha256 "5b12924e27fb53a42720dd3a646a24f6cdaf19f767c048c7044ad20c89ac0933"
  end
  on_intel do
    version "3.32.0,10.14-15"
    sha256 "df882095365c10a3bc1b245bee74f124116bd201825d0b062efe228b2132ca0d"
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
