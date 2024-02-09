cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.29.4,12.7-14-qt6"
    sha256 "9d27be38f4c883b066ce393ce821d81014cbf3849c82a0e3ef0b6dabe0ae4db9"
  end
  on_intel do
    version "3.29.4,10.14-14"
    sha256 "3cef48072ca7bfb03511f57023cd4c2775970f00029854418ce434cb8f5a4a81"
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
