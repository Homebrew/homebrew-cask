cask "gnucash" do
  arch arm: "Arm", intel: "Intel"

  version "5.10-1"
  sha256 arm:   "bf274f81ff924918c80ccbb0c4aa7d1926700bf00ba156300ec51e51ede38caf",
         intel: "820d289fc26b7cbfb8ff83587407c465599aff7c14e6b2acc859cb434a0444d9"

  url "https://github.com/Gnucash/gnucash/releases/download/#{version.hyphens_to_dots.major_minor}/Gnucash-#{arch}-#{version}.dmg",
      verified: "github.com/Gnucash/gnucash/"
  name "GnuCash"
  desc "Double-entry accounting program"
  homepage "https://www.gnucash.org/"

  livecheck do
    url :url
    regex(/^Gnucash-#{arch}[._-]v?(\d+(?:[.-]\d+)+)\.dmg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Gnucash.app"

  zap trash: [
    "~/Library/Application Support/Gnucash",
    "~/Library/Preferences/org.gnucash.Gnucash.plist",
    "~/Library/Saved Application State/org.gnucash.Gnucash.savedState",
  ]
end
