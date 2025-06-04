cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.32.3,12.7-15-qt6"
    sha256 "691ef39b4aa029c68f16b3827026ebe394a75ccd5a9119341100f36a1c79d3f8"
  end
  on_intel do
    version "3.32.3,10.14-15"
    sha256 "292f672e815dafd07d438ef4c5e1b097fac5eb2eefdd893f91a7656fcba2d89e"
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
