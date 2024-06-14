cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.30.0,12.7-14-qt6"
    sha256 "47ab806f6df8381e9664b139425ffed1f2d9e49cf75035359d1ee27026b28cd2"
  end
  on_intel do
    version "3.30.0,10.14-14"
    sha256 "5b3576fc74ddb3637f0e28c06f92742aa1d6903365904eeda1e45ab9267146dc"
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
