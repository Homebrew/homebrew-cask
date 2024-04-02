cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.29.6,12.7-14-qt6"
    sha256 "1c54b349ac01d36848e2d7685473da72dbf974942620dbfdcc8015757e24aaae"
  end
  on_intel do
    version "3.29.6,10.14-14"
    sha256 "15e2147962eead47662dfd10271b7f206d9b642716badc664c6bcd6a5e11e01b"
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
