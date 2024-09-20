cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.31.1,12.7-14-qt6"
    sha256 "99c73b55a7b6578309e0c0c350a273ecd3db1af83f5c48e5297011f7c8e6398d"
  end
  on_intel do
    version "3.31.1,10.14-14"
    sha256 "bf9e5c60d38a6764deb1c8c3c249d8e550771a71677cc9077e4b43f0cb16da43"
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
