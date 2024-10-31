cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.31.2,12.7-14-qt6"
    sha256 "d073ec8aec2b6513b59738fc63808d00eae9c5add3dba240c3f75955b83f51e2"
  end
  on_intel do
    version "3.31.2,10.14-14"
    sha256 "eabee7bb1e0dc624ee8820e0eb0491a711fc61e9faff33b60ddb29bc9f34563e"
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
