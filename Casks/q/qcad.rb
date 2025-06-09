cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.32.3.1,12.7-15-qt6"
    sha256 "89dd13ec1e49818bd4a27ab2b45f0402766939cffdbe2ee81cf86af15dce8f3b"
  end
  on_intel do
    version "3.32.3.1,11-15-qt6"
    sha256 "e476ed4ddca4b70e7075db818fce1a416d244871f6f07ca07bd4c82d80f51d6d"
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
