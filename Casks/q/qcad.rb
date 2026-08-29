cask "qcad" do
  arch arm: "-arm64"

  version "3.33.0,13-26-qt6"
  sha256 arm:   "dbf4b115ac70498ad8ea588258f13e1c4abb902ce6daaed4085477446f4f0e51",
         intel: "904e5b8da8cd4aead8cdcc083f56fa1ac63f067d55fa7809ed998f4246e72a5b"

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
