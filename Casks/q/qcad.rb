cask "qcad" do
  arch arm: "-arm64"

  on_arm do
    version "3.32.9,13-26-qt6"
    sha256 "4d558d2537f985ef3b93cb7e148d2eee9ea9dbd43af05cf60801ba3fb8c9fa92"
  end
  on_intel do
    version "3.32.9,11-26-qt6"
    sha256 "8edb2fe2d22bcb56bcb654c779fda459cacb2113bb263c124f6742f51e30b410"
  end

  url "https://www.qcad.org/archives/qcad/qcad-#{version.csv.first}-trial-macos-#{version.csv.second}#{arch}.dmg"
  name "QCAD"
  desc "Free, open source application for computer aided drafting in 2D"
  homepage "https://www.qcad.org/"

  # This only returns the version from the first matching file name link on the
  # download page, as the QCAD Snapshot link (further down the page) use the
  # same file name format as QCAD Professional (what the cask uses) and this
  # can cause issues when the version/suffix differs.
  livecheck do
    url "https://www.qcad.org/en/download"
    regex(/href=.*?qcad[._-]v?(\d+(?:\.\d+)+)[._-]trial[._-]macos[._-](\d+(?:[._-]\d+)+(?:[._-]qt\d+)?)#{arch}\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: :monterey

  app "QCAD.app"

  zap trash: [
    "~/.config/QCAD",
    "~/Library/Preferences/org.qcad.plist",
    "~/Library/Saved Application State/org.qcad.savedState",
  ]
end
