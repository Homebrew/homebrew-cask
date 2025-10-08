cask "gnucash" do
  arch arm: "Arm", intel: "Intel"

  version on_arch_conditional arm: "5.13-2", intel: "5.13-3"
  sha256 arm:   "f392c641c8747c27d706552c3f97164302bd98dd42141dca002e3af1c1c3c204",
         intel: "6bc9ffc888a10fc39a25dc529024d14f3c56533612fe8e4bef7c7601342f702b"

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

  app "Gnucash.app"

  zap trash: [
    "~/Library/Application Support/Gnucash",
    "~/Library/Preferences/org.gnucash.Gnucash.plist",
    "~/Library/Saved Application State/org.gnucash.Gnucash.savedState",
  ]
end
